/**
 * @file harris_radar_control.h
 * @brief Header file for Harris Radar FPGA control library
 */

#ifndef HARRIS_RADAR_CONTROL_H
#define HARRIS_RADAR_CONTROL_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

// ============================================================================
// INITIALIZATION
// ============================================================================

/**
 * @brief Initialize FPGA memory mapping
 * @param enable_verbose Enable verbose debug output (1=on, 0=off)
 * @return 0 on success, -1 on failure
 */
int harris_radar_init(int enable_verbose);

/**
 * @brief Clean up and release resources
 */
void harris_radar_cleanup(void);

// ============================================================================
// AD9361 SPI ACCESS
// ============================================================================

/**
 * @brief Write to AD9361 register via SPI
 * @param device Device number (0-4)
 * @param reg_addr AD9361 register address (0x000-0x3FF)
 * @param data 8-bit data to write
 * @return 0 on success, -1 on error
 */
int ad9361_spi_write(uint8_t device, uint16_t reg_addr, uint8_t data);

/**
 * @brief Read from AD9361 register via SPI
 * @param device Device number (0-4)
 * @param reg_addr AD9361 register address (0x000-0x3FF)
 * @return 8-bit data value, or -1 on error
 */
int ad9361_spi_read(uint8_t device, uint16_t reg_addr);

/**
 * @brief Get SPI controller status
 * @param device Device number (0-4)
 * @param busy Pointer to store busy flag (can be NULL)
 * @param done Pointer to store done flag (can be NULL)
 * @return 0 on success, -1 on error
 */
int ad9361_get_status(uint8_t device, int *busy, int *done);

/**
 * @brief Verify AD9361 product ID
 * @param device Device number (0-4)
 * @return 0 if correct, -1 otherwise
 */
int ad9361_verify_product_id(uint8_t device);

/**
 * @brief Enable AD9361 chip
 * @param device Device number (0-4)
 * @return 0 on success, -1 on error
 */
int ad9361_enable(uint8_t device);

/**
 * @brief Disable AD9361 chip
 * @param device Device number (0-4)
 * @return 0 on success, -1 on error
 */
int ad9361_disable(uint8_t device);

// ============================================================================
// GPIO CONTROL
// ============================================================================

// GPIO bit definitions
#define GPIO_0    (1 << 0)
#define GPIO_1    (1 << 1)
#define GPIO_2    (1 << 2)
#define GPIO_3    (1 << 3)
#define GPIO_4    (1 << 4)
#define GPIO_5    (1 << 5)
#define GPIO_6    (1 << 6)
#define GPIO_ALL  0x7F

/**
 * @brief Initialize GPIO (set all as outputs)
 * @return 0 on success, -1 on error
 */
int gpio_init(void);

/**
 * @brief Write to GPIO outputs
 * @param value 7-bit value to write
 * @return 0 on success, -1 on error
 */
int gpio_write(uint8_t value);

/**
 * @brief Read current GPIO output state
 * @return Current GPIO value (7-bit), or -1 on error
 */
int gpio_read(void);

/**
 * @brief Set specific GPIO bit(s)
 * @param bits Bitmask of GPIO bits to set
 * @return 0 on success, -1 on error
 */
int gpio_set_bits(uint8_t bits);

/**
 * @brief Clear specific GPIO bit(s)
 * @param bits Bitmask of GPIO bits to clear
 * @return 0 on success, -1 on error
 */
int gpio_clear_bits(uint8_t bits);

/**
 * @brief Toggle specific GPIO bit(s)
 * @param bits Bitmask of GPIO bits to toggle
 * @return 0 on success, -1 on error
 */
int gpio_toggle_bits(uint8_t bits);

/**
 * @brief Set individual GPIO pin
 * @param pin GPIO pin number (0-6)
 * @param value 1 to set high, 0 to set low
 * @return 0 on success, -1 on error
 */
int gpio_set_pin(uint8_t pin, int value);

/**
 * @brief Get state of individual GPIO pin
 * @param pin GPIO pin number (0-6)
 * @return 1 if high, 0 if low, -1 on error
 */
int gpio_get_pin(uint8_t pin);

// ============================================================================
// TEST FUNCTIONS
// ============================================================================

/**
 * @brief Test GPMC/FPGA connectivity
 * @return 0 if pass, -1 if fail
 */
int test_connectivity(void);

/**
 * @brief Test all AD9361 devices
 * @return 0 if all pass, -1 if any fail
 */
int test_all_ad9361(void);

/**
 * @brief Test GPIO functionality
 * @return 0 on success, -1 on error
 */
int test_gpio(void);

#ifdef __cplusplus
}
#endif

#endif /* HARRIS_RADAR_CONTROL_H */
