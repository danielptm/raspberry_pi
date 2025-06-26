void setup() {
  Serial.begin(1152000)
  while(!Serial){}

}

void loop() {
  Serial.println("Hello from Arudino")
  delay(1000)

}
