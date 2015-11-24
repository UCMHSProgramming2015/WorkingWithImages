PImage Windows;
PImage Troll;
void setup(){
  size(300,300);
  Troll = loadImage("Troll.png");
  Windows = loadImage("Windows.jpg");
}

void draw(){
  background(Windows);
  blend(Troll,0,0,300,300,0,0,300,250,SUBTRACT);
}