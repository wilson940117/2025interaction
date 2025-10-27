//week08-1-2048-part1-for-for-fill-rect
//File-preference字放大
void setup(){
  size(410,410);
}
void draw(){
  background(188,174,162);//色彩用滴管，吸範圍的圖
  for(int i=0;i<4;i++){//左手I(對應Y座標)
    for(int j=0;j<4;j++){//右手J(對應X座標)
      fill(206,194,185);//色彩用滴管，吸範圍的圖
      noStroke();//不要有黑框
      rect(j*100+10,i*100+10,90,90,3);//弧度5
    }
  }
}
