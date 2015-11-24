PImage yoshi;
PImage kirby;
PImage mariobackground;

PVector yoshiLoc;


void setup(){
  size(800, 449);
  yoshi = loadImage("yoshi.png");
  kirby = loadImage("kirbyball.png");
  mariobackground = loadImage("mariobackground.jpg");
  
  yoshiLoc = new PVector(100, 315);
}

void draw(){
  background(mariobackground);
  image(yoshi, yoshiLoc.x, yoshiLoc.y, yoshi.width*.25, yoshi.height*.25);
  
}