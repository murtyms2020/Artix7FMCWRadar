# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BUS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLK_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LED_CLK_DIVIDER" -parent ${Page_0}


}

proc update_PARAM_VALUE.BUS_WIDTH { PARAM_VALUE.BUS_WIDTH } {
	# Procedure called to update BUS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUS_WIDTH { PARAM_VALUE.BUS_WIDTH } {
	# Procedure called to validate BUS_WIDTH
	return true
}

proc update_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to update CLK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to validate CLK_FREQ
	return true
}

proc update_PARAM_VALUE.LED_CLK_DIVIDER { PARAM_VALUE.LED_CLK_DIVIDER } {
	# Procedure called to update LED_CLK_DIVIDER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LED_CLK_DIVIDER { PARAM_VALUE.LED_CLK_DIVIDER } {
	# Procedure called to validate LED_CLK_DIVIDER
	return true
}


proc update_MODELPARAM_VALUE.BUS_WIDTH { MODELPARAM_VALUE.BUS_WIDTH PARAM_VALUE.BUS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUS_WIDTH}] ${MODELPARAM_VALUE.BUS_WIDTH}
}

proc update_MODELPARAM_VALUE.CLK_FREQ { MODELPARAM_VALUE.CLK_FREQ PARAM_VALUE.CLK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_FREQ}] ${MODELPARAM_VALUE.CLK_FREQ}
}

proc update_MODELPARAM_VALUE.LED_CLK_DIVIDER { MODELPARAM_VALUE.LED_CLK_DIVIDER PARAM_VALUE.LED_CLK_DIVIDER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LED_CLK_DIVIDER}] ${MODELPARAM_VALUE.LED_CLK_DIVIDER}
}

