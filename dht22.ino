#include <DHT.h> // Include the DHT library

#define DHTPIN 7 // Define the digital pin where the sensor is connected
#define DHTTYPE DHT22 // Define the sensor type as DHT22

DHT dht(DHTPIN, DHTTYPE); // Create a DHT object

void setup() {
  Serial.begin(9600); // Initialize serial communication for displaying readings
  Serial.println("DHTxx test!");
  dht.begin(); // Initialize the DHT sensor
}

void loop() {
  // Wait a few seconds between measurements. Reading temperature or humidity takes about 250 milliseconds!
  delay(2000);

  // Read temperature as Celsius
  float t = dht.readTemperature();

  // Check if any reads failed and exit early (to try again).
  if (isnan(t)) {
    Serial.println("Failed to read from DHT sensor!");
    return;
  }

  // Print temperature to the Serial Monitor
  Serial.print("Temperature: ");
  Serial.print(t);
  Serial.println(" *C");
}
