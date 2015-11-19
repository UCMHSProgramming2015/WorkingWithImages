PImage trumpangry;
float scaleFactor;

void setup(){
  trumpangry = loadImage("trumppic.jpg");
  size(386, 217);
  background(trumpangry);
}

void draw(){
  noStroke();
  fill(trumpangry.get(mouseX, mouseY));
  ellipse(mouseX, mouseY, 5, 5);
  }