//week06-4_arduino_slow_jogging
void setup(){
  pinMode(8,OUTPUT);//8 Buzzer
}

void loop(){
  tone(8, 780, 60);//自己決定聲音的HZ pin8,720HZ,60MS
  delay(333);//若等0.333秒換個聲音
  tone(8,320,60);//自己決定聲音的HZ pin8,320HZ,60MS
  delay(300);//若等0.333秒換個聲音
}//每秒會叫3聲 60秒會叫180聲 180 BPM(beat per Minute)