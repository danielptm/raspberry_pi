import serial
import time

ser = serial.Serial('/dev/ttyACM0', 9600, timeout=1.0)
time.sleep(3)
ser.reset_input_buffer()
print("Serial ok")
try:
    while True:
        time.sleep(1)
        item = "tomauto!"
        print("Python is SENDING this to arudino: " + item)
        message = item + "\n"
        ser.write(message.encode("utf-8"))
        time.sleep(1)
        if ser.in_waiting > 0:
            print("Python is RECEIVING this from arduino")
            line = ser.readline().decode("utf-8")
            print(line)

except KeyboardInterrupt:
    print("Close serial connection")
    ser.close()