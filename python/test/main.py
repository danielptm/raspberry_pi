import serial
import time


def print_hi(name):
    ser = serial.Serial('/dev/ttyACM0', 115200, timeout = 1.0)
    time.sleep(3)
    ser.reset_input_buffer()
    print("Serial ok")
    ser.close()


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print_hi('PyCharm')

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
