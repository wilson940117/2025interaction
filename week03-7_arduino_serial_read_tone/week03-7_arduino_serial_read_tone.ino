//week03-7_arduino_serial_read_tone
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);//USB傳輸速度
  pinMode(8,OUTPUT);//8叭 要會發聲
}
void serialEvent(){//等待USB的事件
  while(Serial.available()){//若有資料
    Serial.read();
    tone(8,800,200);
  }
}
void loop() {
  // put your main code here, to run repeatedly:

}
