//week08-arduino-G5_c5 
void setup() {
  Serial.begin(9600);
  // put your setup code here, to run once:
  pinMode(8,OUTPUT);
  tone(8,784,100);
  delay(100);
  tone(8,523,100);
  delay(100);
}

void serialEvent(){
  while(Serial.available()){
    char now = Serial.read();
    if(now=='R'){
      pinMode(8,OUTPUT);
      tone(8,784,100);
      delay(100);
      tone(8,523,100);
      delay(100);
    }else{
      pinMode(8,OUTPUT);
      tone(8,523,100);
      delay(100);
      tone(8,784,100);
      delay(100);
    }
  }
}
void loop() {
  // put your main code here, to run repeatedly:

}
