void setup() {
  Serial.begin(9600);
  Serial.println("Sketch started!");  // Print message to serial

  while(!Serial){}

}

void loop() {
  Serial.println("Hello from Tomauto");
  delay(1000);
}
