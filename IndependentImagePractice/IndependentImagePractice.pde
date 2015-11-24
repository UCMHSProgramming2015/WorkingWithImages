PImage yoshi;
PImage kirby;
PImage mariobackground;

PVector yoshiLoc;
PVector kirbyLoc;


void setup(){
  size(800, 449);
  yoshi = loadImage("yoshi.png");
  kirby = loadImage("kirbyball.png");
  mariobackground = loadImage("mariobackground.jpg");
  
  yoshiLoc = new PVector(100, 315);  //x = 100, y = 315
  kirbyLoc = new PVector(400, 340);
}

void draw(){
  background(mariobackground);
  image(yoshi, yoshiLoc.x, yoshiLoc.y, yoshi.width*.25, yoshi.height*.25);
  image(kirby, kirbyLoc.x, kirbyLoc.y, kirby.width*.5, kirby.height*.5);
  
  if (keyPressed){
    if (key == 'd'){
      yoshiLoc.add(3, 0);
    }
    if (key == 'a'){
      yoshiLoc.add(-3, 0);
    }
  }
}