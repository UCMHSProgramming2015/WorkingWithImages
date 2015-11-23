PImage undertale2;
PImage undertale3;
PImage maskPudding;

void setup(){
  size(800, 600);
  undertale2 = loadImage("undertale2.png");
  undertale3 = loadImage("undertale3.png");
  maskPudding = loadImage("pudding2.jpg");
}

void draw(){
  background(0);
  image(maskPudding, mouseX, mouseY);
  
  maskPudding.mask(undertale3);
}