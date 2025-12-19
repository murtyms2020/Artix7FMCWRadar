/**
 * @file harris_radar_control.c
 * @brief Complete control library for Harris Radar FPGA design
 * 
 * Provides access to:
 *   - 5x AD9361 RF transceivers via SPI
 *   - 7x GPIO outputs via AXI GPIO
 * 
 * Address Map (from Vivado):
 *   0x1000-0x1FFF: AD9361_0 SPI control
 *   0x2000-0x2FFF: AD9361_1 SPI control
 *   0x3000-0x3FFF: AD9361_2 SPI control
 *   0x4000-0x4FFF: AD9361_3 SPI control
 *   0x5000-0x5FFF: AD9361_4 SPI control
 *   0x7000-0x7FFF: AXI GPIO control
 * 
 * GPMC Connection: AM335x CSN3
 * 
 * @author Murty Malladi 
 * @date December 2025
 */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <errno.h>

// ============================================================================
// ADDRESS MAP DEFINITIONS (from Vivado Address Editor)
// ============================================================================

// GPMC CS3 base address (set by AM335x GPMC configuration)
// This should match your device tree settings
#define FPGA_BASE_ADDR     0x18000000  // Typical CS3 address

// Device offsets (from Vivado address map)
#define AD9361_0_BASE      0x1000      // Base: 0x1000, Range: 4K
#define AD9361_1_BASE      0x2000      // Base: 0x2000, Range: 4K
#define AD9361_2_BASE      0x3000      // Base: 0x3000, Range: 4K
#define AD9361_3_BASE      0x4000      // Base: 0x4000, Range: 4K
#define AD9361_4_BASE      0x5000      // Base: 0x5000, Range: 4K
#define AXI_GPIO_BASE      0x7000      // Base: 0x7000, Range: 4K

// SPI control register offsets (within each AD9361 device)
#define SPI_CTRL_REG       0x00        // Control/Status register
#define SPI_ADDR_REG       0x04        // AD9361 register address
#define SPI_WDATA_REG      0x08        // Write data
#define SPI_RDATA_REG      0x0C        // Read data (read-only)

// AXI GPIO register offsets (Xilinx standard)
#define GPIO_DATA_REG      0x00        // GPIO data register
#define GPIO_TRI_REG       0x04        // GPIO tristate register (0=output)

// Control register bit definitions
#define CTRL_WR_REQ        (1 << 0)    // Write request
#define CTRL_RD_REQ        (1 << 1)    // Read request
#define CTRL_BUSY          (1 << 2)    // Busy flag (read-only)
#define CTRL_DONE          (1 << 3)    // Done flag (read-only)

// GPIO bit definitions
#define GPIO_0             (1 << 0)
#define GPIO_1             (1 << 1)
#define GPIO_2             (1 << 2)
#define GPIO_3             (1 << 3)
#define GPIO_4             (1 << 4)
#define GPIO_5             (1 << 5)
#define GPIO_6             (1 << 6)
#define GPIO_ALL           0x7F        // All 7 GPIO bits

// Timeout values
#define SPI_TIMEOUT_US     10000       // 10ms timeout for SPI transactions

// ============================================================================
// GLOBAL VARIABLES
// ============================================================================

static void *fpga_base = NULL;
static int mem_fd = -1;
static int verbose = 0;

// Device base addresses (calculated from FPGA_BASE_ADDR)
static const uint32_t ad9361_bases[5] = {
    AD9361_0_BASE,
    AD9361_1_BASE,
    AD9361_2_BASE,
    AD9361_3_BASE,
    AD9361_4_BASE
};

// ============================================================================
// HELPER MACROS
// ============================================================================

#define REG_ADDR(base, offset) \
    ((volatile uint32_t*)((uint8_t*)fpga_base + (base) + (offset)))

#define VERBOSE_PRINT(...) do { if (verbose) printf(__VA_ARGS__); } while(0)

// ============================================================================
// INITIALIZATION FUNCTIONS
// ============================================================================

/**
 * @brief Initialize FPGA memory mapping
 * @param enable_verbose Enable verbose debug output
 * @return 0 on success, -1 on failure
 */
int harris_radar_init(int enable_verbose) {
    verbose = enable_verbose;
    
    VERBOSE_PRINT("Initializing Harris Radar FPGA interface...\n");
    VERBOSE_PRINT("  Base address: 0x%08X\n", FPGA_BASE_ADDR);
    
    mem_fd = open("/dev/uio0", O_RDWR | O_SYNC);
    if (mem_fd < 0) {
        perror("Failed to open /dev/mem");
        fprintf(stderr, "  Note: You may need to run as root or use sudo\n");
        return -1;
    }
    
    // Map 32KB to cover all devices (0x0000-0x7FFF)
    fpga_base = mmap(NULL, 0x8000, PROT_READ | PROT_WRITE, 
                     MAP_SHARED, mem_fd, FPGA_BASE_ADDR);
    
    if (fpga_base == MAP_FAILED) {
        perror("Failed to mmap FPGA");
        close(mem_fd);
        mem_fd = -1;
        return -1;
    }
    
    VERBOSE_PRINT("  Mapped to virtual address: %p\n", fpga_base);
    VERBOSE_PRINT("  Device mappings:\n");
    VERBOSE_PRINT("    AD9361_0: 0x%08lX\n", 
                  (unsigned long)fpga_base + AD9361_0_BASE);
    VERBOSE_PRINT("    AD9361_1: 0x%08lX\n", 
                  (unsigned long)fpga_base + AD9361_1_BASE);
    VERBOSE_PRINT("    AD9361_2: 0x%08lX\n", 
                  (unsigned long)fpga_base + AD9361_2_BASE);
    VERBOSE_PRINT("    AD9361_3: 0x%08lX\n", 
                  (unsigned long)fpga_base + AD9361_3_BASE);
    VERBOSE_PRINT("    AD9361_4: 0x%08lX\n", 
                  (unsigned long)fpga_base + AD9361_4_BASE);
    VERBOSE_PRINT("    AXI_GPIO: 0x%08lX\n", 
                  (unsigned long)fpga_base + AXI_GPIO_BASE);
    
    printf("✓ Harris Radar FPGA initialized successfully\n");
    return 0;
}

/**
 * @brief Clean up and release resources
 */
void harris_radar_cleanup(void) {
    VERBOSE_PRINT("Cleaning up Harris Radar interface...\n");
    
    if (fpga_base != NULL && fpga_base != MAP_FAILED) {
        munmap(fpga_base, 0x8000);
        fpga_base = NULL;
    }
    
    if (mem_fd >= 0) {
        close(mem_fd);
        mem_fd = -1;
    }
    
    VERBOSE_PRINT("✓ Cleanup complete\n");
}

// ============================================================================
// AD9361 SPI ACCESS FUNCTIONS
// ============================================================================

/**
 * @brief Write to AD9361 register via SPI
 * 
 * @param device Device number (0-4)
 * @param reg_addr AD9361 register address (0x000-0x3FF, 10-bit)
 * @param data 8-bit data to write
 * @return 0 on success, -1 on error
 */
int ad9361_spi_write(uint8_t device, uint16_t reg_addr, uint8_t data) {
    if (fpga_base == NULL) {
        fprintf(stderr, "ERROR: FPGA not initialized\n");
        return -1;
    }
    
    if (device > 4) {
        fprintf(stderr, "ERROR: Invalid device %d (must be 0-4)\n", device);
        return -1;
    }
    
    if (reg_addr > 0x3FF) {
        fprintf(stderr, "ERROR: Invalid register 0x%03X (must be 0x000-0x3FF)\n", 
                reg_addr);
        return -1;
    }
    
    uint32_t base = ad9361_bases[device];
    
    volatile uint32_t *ctrl_reg  = REG_ADDR(base, SPI_CTRL_REG);
    volatile uint32_t *addr_reg  = REG_ADDR(base, SPI_ADDR_REG);
    volatile uint32_t *wdata_reg = REG_ADDR(base, SPI_WDATA_REG);
    
    VERBOSE_PRINT("AD9361_%d: Write 0x%02X to reg 0x%03X\n", 
                  device, data, reg_addr);
    
    // Set SPI address (10-bit)
    *addr_reg = reg_addr & 0x3FF;
    
    // Set write data (8-bit)
    *wdata_reg = data;
    
    // Trigger write
    *ctrl_reg = CTRL_WR_REQ;
    
    // Wait for completion
    int timeout = SPI_TIMEOUT_US;
    while ((*ctrl_reg & CTRL_BUSY) && timeout-- > 0) {
        usleep(1);
    }
    
    if (timeout <= 0) {
        fprintf(stderr, "ERROR: SPI write timeout on device %d\n", device);
        return -1;
    }
    
    VERBOSE_PRINT("  Status: 0x%08X (Done=%d, Busy=%d)\n", 
                  *ctrl_reg, 
                  (*ctrl_reg & CTRL_DONE) ? 1 : 0,
                  (*ctrl_reg & CTRL_BUSY) ? 1 : 0);
    
    return 0;
}

/**
 * @brief Read from AD9361 register via SPI
 * 
 * @param device Device number (0-4)
 * @param reg_addr AD9361 register address (0x000-0x3FF, 10-bit)
 * @return 8-bit data value, or -1 on error
 */
int ad9361_spi_read(uint8_t device, uint16_t reg_addr) {
    if (fpga_base == NULL) {
        fprintf(stderr, "ERROR: FPGA not initialized\n");
        return -1;
    }
    
    if (device > 4) {
        fprintf(stderr, "ERROR: Invalid device %d (must be 0-4)\n", device);
        return -1;
    }
    
    if (reg_addr > 0x3FF) {
        fprintf(stderr, "ERROR: Invalid register 0x%03X (must be 0x000-0x3FF)\n", 
                reg_addr);
        return -1;
    }
    
    uint32_t base = ad9361_bases[device];
    
    volatile uint32_t *ctrl_reg  = REG_ADDR(base, SPI_CTRL_REG);
    volatile uint32_t *addr_reg  = REG_ADDR(base, SPI_ADDR_REG);
    volatile uint32_t *rdata_reg = REG_ADDR(base, SPI_RDATA_REG);
    
    VERBOSE_PRINT("AD9361_%d: Read from reg 0x%03X\n", device, reg_addr);
    
    // Set SPI address
    *addr_reg = reg_addr & 0x3FF;
    
    // Trigger read
    *ctrl_reg = CTRL_RD_REQ;
    
    // Wait for completion
    int timeout = SPI_TIMEOUT_US;
    while ((*ctrl_reg & CTRL_BUSY) && timeout-- > 0) {
        usleep(1);
    }
    
    if (timeout <= 0) {
        fprintf(stderr, "ERROR: SPI read timeout on device %d\n", device);
        return -1;
    }
    
    // Read result
    uint8_t result = *rdata_reg & 0xFF;
    
    VERBOSE_PRINT("  Result: 0x%02X\n", result);
    VERBOSE_PRINT("  Status: 0x%08X\n", *ctrl_reg);
    
    return result;
}

/**
 * @brief Get SPI controller status
 * 
 * @param device Device number (0-4)
 * @param busy Pointer to store busy flag (can be NULL)
 * @param done Pointer to store done flag (can be NULL)
 * @return 0 on success, -1 on error
 */
int ad9361_get_status(uint8_t device, int *busy, int *done) {
    if (fpga_base == NULL || device > 4) {
        return -1;
    }
    
    uint32_t base = ad9361_bases[device];
    volatile uint32_t *ctrl_reg = REG_ADDR(base, SPI_CTRL_REG);
    
    uint32_t status = *ctrl_reg;
    
    if (busy != NULL) {
        *busy = (status & CTRL_BUSY) ? 1 : 0;
    }
    
    if (done != NULL) {
        *done = (status & CTRL_DONE) ? 1 : 0;
    }
    
    return 0;
}

// ============================================================================
// GPIO CONTROL FUNCTIONS
// ============================================================================

/**
 * @brief Initialize GPIO (set all as outputs)
 * @return 0 on success, -1 on error
 */
int gpio_init(void) {
    if (fpga_base == NULL) {
        fprintf(stderr, "ERROR: FPGA not initialized\n");
        return -1;
    }
    
    volatile uint32_t *tri_reg = REG_ADDR(AXI_GPIO_BASE, GPIO_TRI_REG);
    
    // Set all 7 GPIO pins as outputs (0 = output, 1 = input)
    *tri_reg = 0x00;  // All outputs
    
    VERBOSE_PRINT("GPIO: Initialized all 7 pins as outputs\n");
    
    return 0;
}

/**
 * @brief Write to GPIO outputs
 * 
 * @param value 7-bit value to write (bits [6:0])
 * @return 0 on success, -1 on error
 */
int gpio_write(uint8_t value) {
    if (fpga_base == NULL) {
        fprintf(stderr, "ERROR: FPGA not initialized\n");
        return -1;
    }
    
    volatile uint32_t *data_reg = REG_ADDR(AXI_GPIO_BASE, GPIO_DATA_REG);
    
    // Mask to 7 bits
    *data_reg = value & GPIO_ALL;
    
    VERBOSE_PRINT("GPIO: Write 0x%02X (binary: ", value & GPIO_ALL);
    if (verbose) {
        for (int i = 6; i >= 0; i--) {
            printf("%d", (value & (1 << i)) ? 1 : 0);
        }
        printf(")\n");
    }
    
    return 0;
}

/**
 * @brief Read current GPIO output state
 * 
 * @return Current GPIO value (7-bit), or -1 on error
 */
int gpio_read(void) {
    if (fpga_base == NULL) {
        fprintf(stderr, "ERROR: FPGA not initialized\n");
        return -1;
    }
    
    volatile uint32_t *data_reg = REG_ADDR(AXI_GPIO_BASE, GPIO_DATA_REG);
    
    uint8_t value = *data_reg & GPIO_ALL;
    
    VERBOSE_PRINT("GPIO: Read 0x%02X\n", value);
    
    return value;
}

/**
 * @brief Set specific GPIO bit(s)
 * 
 * @param bits Bitmask of GPIO bits to set (e.g., GPIO_0 | GPIO_3)
 * @return 0 on success, -1 on error
 */
int gpio_set_bits(uint8_t bits) {
    int current = gpio_read();
    if (current < 0) return -1;
    
    return gpio_write(current | (bits & GPIO_ALL));
}

/**
 * @brief Clear specific GPIO bit(s)
 * 
 * @param bits Bitmask of GPIO bits to clear
 * @return 0 on success, -1 on error
 */
int gpio_clear_bits(uint8_t bits) {
    int current = gpio_read();
    if (current < 0) return -1;
    
    return gpio_write(current & ~(bits & GPIO_ALL));
}

/**
 * @brief Toggle specific GPIO bit(s)
 * 
 * @param bits Bitmask of GPIO bits to toggle
 * @return 0 on success, -1 on error
 */
int gpio_toggle_bits(uint8_t bits) {
    int current = gpio_read();
    if (current < 0) return -1;
    
    return gpio_write(current ^ (bits & GPIO_ALL));
}

/**
 * @brief Set individual GPIO pin
 * 
 * @param pin GPIO pin number (0-6)
 * @param value 1 to set high, 0 to set low
 * @return 0 on success, -1 on error
 */
int gpio_set_pin(uint8_t pin, int value) {
    if (pin > 6) {
        fprintf(stderr, "ERROR: Invalid GPIO pin %d (must be 0-6)\n", pin);
        return -1;
    }
    
    if (value) {
        return gpio_set_bits(1 << pin);
    } else {
        return gpio_clear_bits(1 << pin);
    }
}

/**
 * @brief Get state of individual GPIO pin
 * 
 * @param pin GPIO pin number (0-6)
 * @return 1 if high, 0 if low, -1 on error
 */
int gpio_get_pin(uint8_t pin) {
    if (pin > 6) {
        fprintf(stderr, "ERROR: Invalid GPIO pin %d (must be 0-6)\n", pin);
        return -1;
    }
    
    int current = gpio_read();
    if (current < 0) return -1;
    
    return (current & (1 << pin)) ? 1 : 0;
}

// ============================================================================
// HIGH-LEVEL AD9361 FUNCTIONS
// ============================================================================

/**
 * @brief Verify AD9361 product ID
 * 
 * @param device Device number (0-4)
 * @return 0 if correct product ID (0x0A), -1 otherwise
 */
int ad9361_verify_product_id(uint8_t device) {
    int product_id = ad9361_spi_read(device, 0x037);
    
    if (product_id == 0x0A) {
        printf("✓ AD9361_%d: Product ID = 0x%02X (correct)\n", 
               device, product_id);
        return 0;
    } else if (product_id >= 0) {
        fprintf(stderr, "✗ AD9361_%d: Product ID = 0x%02X (expected 0x0A)\n", 
                device, product_id);
        return -1;
    } else {
        fprintf(stderr, "✗ AD9361_%d: Failed to read product ID\n", device);
        return -1;
    }
}

/**
 * @brief Enable AD9361 chip
 * 
 * @param device Device number (0-4)
 * @return 0 on success, -1 on error
 */
int ad9361_enable(uint8_t device) {
    printf("Enabling AD9361_%d...\n", device);
    
    // Clear POWER_DOWN bit
    if (ad9361_spi_write(device, 0x002, 0x00) != 0) {
        return -1;
    }
    
    usleep(1000);  // Wait 1ms for chip to stabilize
    
    printf("✓ AD9361_%d enabled\n", device);
    return 0;
}

/**
 * @brief Disable AD9361 chip
 * 
 * @param device Device number (0-4)
 * @return 0 on success, -1 on error
 */
int ad9361_disable(uint8_t device) {
    printf("Disabling AD9361_%d...\n", device);
    
    // Set POWER_DOWN bit
    if (ad9361_spi_write(device, 0x002, 0x01) != 0) {
        return -1;
    }
    
    printf("✓ AD9361_%d disabled\n", device);
    return 0;
}

// ============================================================================
// TEST FUNCTIONS
// ============================================================================

/**
 * @brief Test GPMC/FPGA connectivity
 */
int test_connectivity(void) {
    printf("\n=== Connectivity Test ===\n");
    
    // Test read/write to a register (doesn't trigger SPI)
    volatile uint32_t *test_reg = REG_ADDR(AD9361_0_BASE, SPI_WDATA_REG);
    
    printf("Testing register read/write...\n");
    
    uint32_t test_values[] = {0x00, 0x55, 0xAA, 0xFF};
    int pass = 0;
    
    for (int i = 0; i < 4; i++) {
        *test_reg = test_values[i];
        usleep(10);
        uint32_t readback = *test_reg & 0xFF;
        
        printf("  Write 0x%02X, Read 0x%02X: ", test_values[i], readback);
        
        if (readback == test_values[i]) {
            printf("✓ PASS\n");
            pass++;
        } else {
            printf("✗ FAIL\n");
        }
    }
    
    printf("Result: %d/4 tests passed\n", pass);
    return (pass == 4) ? 0 : -1;
}

/**
 * @brief Test all AD9361 devices
 */
int test_all_ad9361(void) {
    printf("\n=== AD9361 Device Test ===\n");
    
    int pass = 0;
    
    for (int dev = 0; dev < 5; dev++) {
        if (ad9361_verify_product_id(dev) == 0) {
            pass++;
        }
    }
    
    printf("\nResult: %d/5 devices responding correctly\n", pass);
    return (pass == 5) ? 0 : -1;
}

/**
 * @brief Test GPIO functionality
 */
int test_gpio(void) {
    printf("\n=== GPIO Test ===\n");
    
    // Initialize GPIO
    if (gpio_init() != 0) {
        return -1;
    }
    
    // Test pattern
    printf("Testing GPIO patterns...\n");
    
    uint8_t patterns[] = {0x00, 0x7F, 0x55, 0x2A, 0x0F, 0x70};
    
    for (int i = 0; i < sizeof(patterns); i++) {
        printf("  Writing 0x%02X... ", patterns[i]);
        gpio_write(patterns[i]);
        usleep(100000);  // 100ms
        
        int readback = gpio_read();
        if (readback == patterns[i]) {
            printf("✓ PASS (readback = 0x%02X)\n", readback);
        } else {
            printf("✗ FAIL (readback = 0x%02X)\n", readback);
        }
    }
    
    // Clear all
    gpio_write(0x00);
    
    return 0;
}

// ============================================================================
// EXAMPLE USAGE / MAIN FUNCTION
// ============================================================================

int main(int argc, char *argv[]) {
    printf("========================================\n");
    printf("Harris Radar FPGA Control Library\n");
    printf("========================================\n\n");
    
    // Parse command line arguments
    int enable_verbose = 0;
    if (argc > 1 && strcmp(argv[1], "-v") == 0) {
        enable_verbose = 1;
    }
    
    // Initialize
    if (harris_radar_init(enable_verbose) != 0) {
        fprintf(stderr, "Failed to initialize FPGA interface\n");
        return 1;
    }
    
    // Run tests
    test_connectivity();
    test_all_ad9361();
    test_gpio();
    
    // Example: Configure AD9361_0
    printf("\n=== Example: Configure AD9361_0 ===\n");
    
    if (ad9361_enable(0) == 0) {
        // Set RX gain (example)
        printf("Setting RX gain...\n");
        ad9361_spi_write(0, 0x230, 0x1F);  // RX1 manual gain
        ad9361_spi_write(0, 0x231, 0x1F);  // RX2 manual gain
        
        // Read back to verify
        int rx1_gain = ad9361_spi_read(0, 0x230);
        printf("  RX1 gain = 0x%02X\n", rx1_gain);
    }
    
    // Example: Control GPIO
    printf("\n=== Example: GPIO Control ===\n");
    
    printf("Setting GPIO_0 and GPIO_2 high...\n");
    gpio_set_bits(GPIO_0 | GPIO_2);
    usleep(500000);
    
    printf("Toggling GPIO_1...\n");
    gpio_toggle_bits(GPIO_1);
    usleep(500000);
    
    printf("Clearing all GPIO...\n");
    gpio_write(0x00);
    
    // Cleanup
    harris_radar_cleanup();
    
    printf("\n========================================\n");
    printf("Test complete!\n");
    printf("========================================\n");
    
    return 0;
}
