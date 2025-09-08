//File-New (ctrl-N) 新專案
//week01-2-keypressed-text-key
void setup(){
  size(500,500);
}
void draw(){
  if(keyPressed){//記得關掉注音
    background(#FF0000);//紅色背景
    textSize(80);//字放大
    text(""+key,100,100);
  }
}
