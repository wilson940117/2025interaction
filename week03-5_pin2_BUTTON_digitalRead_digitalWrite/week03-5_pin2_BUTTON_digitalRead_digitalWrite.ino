//week03-5_pin2_BUTTON_digitalRead_digitalWrite
void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT_PULLUP);//按鈕Button是2號,沒按下去,就會(拉高)
  for(int i=3;i<=13;i++){//把pin 3,4,5,.....,13都設成OUTPUT
    pinMode(i, OUTPUT);//都是可以發亮的
  }
}
int now = 3;//現在是pin3發亮
void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2)==LOW){
    now = now + 1;
    if(now>13) now = 3;
    for(int i=3;i<=13;i++){
    digitalWrite(i, LOW);  
    }
    digitalWrite(now,HIGH);
    delay(500);//休息一下
  }
}
