#!/bin/bash

set -e

echo "🚀 Installing Arduino CLI on Raspberry Pi..."

# Define version (change if needed)
ARDUINO_CLI_VERSION="0.35.2"

# Define download URL (auto-detect architecture)
ARCH="ARMv7"
URL="https://downloads.arduino.cc/arduino-cli/arduino-cli_${ARDUINO_CLI_VERSION}_Linux_${ARCH}.tar.gz"

# Download and extract
echo "🔽 Downloading Arduino CLI from: $URL"
curl -fsSL "$URL" -o arduino-cli.tar.gz

echo "📦 Extracting arduino-cli.tar.gz"
tar -xzf arduino-cli.tar.gz

# Move binary to /usr/local/bin
echo "🚚 Moving arduino-cli to /usr/local/bin"
sudo mv arduino-cli /usr/local/bin/

# Clean up
rm arduino-cli.tar.gz

# Verify installation
echo "✅ Verifying installation..."
arduino-cli version

# Optionally initialize config
echo "⚙️ Initializing arduino-cli configuration..."
arduino-cli config init

echo "🎉 Arduino CLI installation completed!"

