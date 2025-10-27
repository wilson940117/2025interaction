//week08-3-part3-void-keyPressed_gemTwo
//week08-2-2048-part2_colro_color_array_N_B
//增加不同的板子2,4,8,16,31,64
//要有陣列4x4
color [] c = {#CEC2B9,#EFE5DA,#EDE1CA,#EFB37E,#EF7F63,#EF7F63};
color [] c2 = {#776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5};//字色
int []N = {0,2,4,8,16,32,64};//對應的數字
int [][] B = {{0,0,0,0},{1,2,3,4},{5,0,0,0},{0,0,0,0}};//板子
void keyPressed(){
  genTwo();
}
void genTwo(){//找出陣列0的地方
  int zero = 0;
  for(int i=0; i<4;i++){
    for(int j=0;j<4;j++){
      if(B[i][j]==0) zero++;
    }
  }
  int ans = int(random(zero));
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      if(B[i][j]==0){
        if(ans==0){
          B[i][j] = 1;
          return;
        }else ans--;
      }
    }
  }
}
void setup(){
  size(410,410);//讓邊線漂亮一點
}
void draw(){
  background(188,174,162);//色彩用滴管，吸範圍的圖
  for(int i=0;i<4;i++){//左手I(對應Y座標)
    for(int j=0;j<4;j++){//右手J(對應X座標)
      int id = B[i][j];//fill(206,194,185);//色彩用滴管，吸範圍的圖
      fill( c[id] );
      noStroke();//不要有黑框
      rect(j*100+10,i*100+10,90,90,3);//弧度5
      fill( c2[id]);
      textAlign(CENTER,CENTER);
      textSize(60);
      text( N[id], j*100+55, i*100+55);
    }
  }
}
