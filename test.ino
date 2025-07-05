void setup() {
  Serial.begin(9600);
  Serial.println("Sketch started!");  // Print message to serial

  while(!Serial){}

}

void loop() {
  if (Serial.available() > 0) {
    String message = Serial.readStringUntil('\n');
    String sendBack = "Lets do this!";
    Serial.println(sendBack);
  }
}
