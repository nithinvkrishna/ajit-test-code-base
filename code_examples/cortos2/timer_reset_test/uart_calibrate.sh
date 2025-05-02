echo -e "--------------------------------------"
echo "Starting Calibration of Debug UART"
echo -e "--------------------------------------"
calibrateUart /dev/ttyUSB0
echo -e "--------------------------------------"
echo "Calibrating Debug UART done"
echo -e "--------------------------------------\n"
#ajit_debug_monitor_mt -u /dev/ttyUSB0 < ajit_shell_commands.txt
ajit_debug_monitor_mt -u /dev/ttyUSB0
