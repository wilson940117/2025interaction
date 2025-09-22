//week03-8-processing_mouse_serial_write_space
import processing.serial.*;
Serial myPort;
void setup(){
  size(400,400);
  myPort= new Serial(this,"COM3",9600);
}
void mousePressed(){
  if(mouseButton==LEFT)myPort.write('b');
  if(mouseButton==RIGHT)myPort.write(' ');
}
void draw(){
  if(mousePressed)background(#FF0000);
  else background(#00FF00);
}
