PImage yoshi;
PImage kirby;
PImage mariobackground;
float yoshiX = 100;
float yoshiY = 315;

void setup(){
  size(800, 449);
  yoshi = loadImage("yoshi.png");
  kirby = loadImage("kirbyball.png");
  mariobackground = loadImage("mariobackground.jpg");
}

void draw(){
  background(mariobackground);
  image(yoshi, yoshiX, yoshiY, yoshi.width*.25, yoshi.height*.25);
  
}