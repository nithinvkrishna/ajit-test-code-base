import serial
import threading
import pexpect

# Serial port and completion string
SERIAL_PORT = '/dev/ttyUSB1'
BAUD_RATE = 115200
COMPLETION_STRING = "[MAIN] Program execution completed"

# Event to signal when the completion string is detected
completion_event = threading.Event()

def monitor_serial_output():
    """Monitor the serial output for the completion string."""
    print("[INFO] Starting serial monitoring...")
    with serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=1) as ser:
        while not completion_event.is_set():
            try:
                line = ser.readline().decode(errors='ignore').strip()
                if line:
                    print(f"[SERIAL] {line}")  # Print serial output for debugging
                    if COMPLETION_STRING in line:
                        print("[INFO] Completion string detected in serial output.")
                        completion_event.set()  # Signal the main thread
                        break
            except Exception as e:
                print(f"[ERROR] Serial monitoring error: {e}")
                break

def interact_with_ajit_shell():
    """Interact with the ajit_debug_monitor_mt shell."""
    ajit_command = "ajit_debug_monitor_mt -u /dev/ttyUSB0"
    print("[INFO] Starting ajit_debug_monitor_mt...")
    child = pexpect.spawn(ajit_command, encoding='utf-8', timeout=300)

    # Wait for the shell prompt
    child.expect("ajit[0:0]>")
    print("[INFO] ajit_debug_monitor_mt shell started.")

    # Send the command to run the test
    print("[INFO] Running the test script...")
    child.sendline("s run.script")

    # Wait for the completion event
    print("[INFO] Waiting for the test to complete...")
    completion_event.wait()

    # Once the test is complete, send the 'q' command to exit
    print("[INFO] Test completed. Exiting ajit_debug_monitor_mt...")
    child.sendline("q")
    child.expect(pexpect.EOF)
    print("[INFO] ajit_debug_monitor_mt exited successfully.")

# Main function
if __name__ == "__main__":
    # Start the serial monitoring thread
    serial_thread = threading.Thread(target=monitor_serial_output, daemon=True)
    serial_thread.start()

    # Interact with the ajit_debug_monitor_mt shell
    interact_with_ajit_shell()

    # Wait for the serial thread to finish
    serial_thread.join()
    print("[INFO] Regression test completed.")