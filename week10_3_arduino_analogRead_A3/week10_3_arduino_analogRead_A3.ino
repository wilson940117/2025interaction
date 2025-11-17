//week10_4_arduino_serial_monitor_joystrick_serial_println
//修改自week10_3_arduino_analogRead_A3
//把 joystick 的 y 線,按到 MakerUno A3
//(不能接其他的,因為要接有 小蟲符號的,代表analog訊號)
void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT_PULLUP);//pin2按鈕 可以高(沒按) 可以低(按)
  pinMode(8, OUTPUT);

}

void loop() { //一秒鐘跑 1000HZ太快了慢一點才行
  delay(100);//慢一點避免 Processing 來不及處理眼睛看不到
   int now = analogRead(A3);
   Serial.println(now);
   //想利用 serial monitor 來看看會送出甚麼訊號
}