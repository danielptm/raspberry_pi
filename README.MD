## Start

Install arduino CLI.
1. Ensure the correct cli version for the architecture. For example aarch64.
2. Install arduino cli: curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh; (aarch64)
3. Make sure it is attached correctly to your PATH variable


To compile arduino script
```arduino-cli compile --fqbn arduino:avr:uno /path/to/folder/with/files/of/.ino```


To upload an arduino script to arduino
```arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:avr:uno /path/to/folder/with/files/of/.ino```

To see output from script running (baudrate has to match in file)
```arduino-cli monitor -p /dev/ttyACM0 -c baudrate=9600```

