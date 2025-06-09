set_global_assignment -entity "Nios_System_2A" -library "lib_Nios_System_2A" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "Nios_System_2A" -library "lib_Nios_System_2A" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "Nios_System_2A" -library "lib_Nios_System_2A" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_Nios_System_2A" -name SPD_FILE [file join $::quartus(sip_path) "../Nios_System_2A.spd"]
set_global_assignment -library "lib_Nios_System_2A" -name MISC_FILE [file join $::quartus(sip_path) "../../Nios_System_2A.qsys"]

set_global_assignment -library "lib_Nios_System_2A" -name MISC_FILE [file join $::quartus(sip_path) "Nios_System_2A.vhd"]
set_global_assignment -library "lib_Nios_System_2A" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Nios_System_2A_LED_pio.vhd"]
