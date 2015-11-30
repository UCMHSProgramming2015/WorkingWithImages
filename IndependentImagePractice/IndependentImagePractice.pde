PImage yoshi;
PImage kirby;
PImage mariobackground;
PImage haro;  //to be blended with kirby
PImage cloud;
PImage galaxy;

PVector yoshiLoc;

PVector kirbyLoc;

PVector vel;


void setup(){
  size(800, 449);
  
  yoshi = loadImage("yoshi.png");
  kirby = loadImage("kirbyball.png");
  mariobackground = loadImage("mariobackground.jpg");
  haro = loadImage("haro.png");
  cloud = loadImage("cloud2.jpg");
  galaxy = loadImage("galaxy.jpg");
  
  yoshiLoc = new PVector(100, 315);  //x = 100, y = 315
  kirby.blend(haro, 0, 0, kirby.width, kirby.height, 0, 0, haro.width, haro.height, SCREEN);
  
  kirbyLoc = new PVector(400, 340);
  
  cloud.mask(galaxy);
  
  vel = new PVector(2, 2);
}

void draw(){
  background(mariobackground);
  
  //image(yoshi, yoshiLoc.x, yoshiLoc.y, yoshi.width*.25, yoshi.height*.25);
  
  filter(GRAY);
  
  image(yoshi, mouseX, 315, yoshi.width*.25, yoshi.height*.25);
  
  image(kirby, kirbyLoc.x, kirbyLoc.y, kirby.width*.5, kirby.height*.5);

  image(cloud, mouseX, 100);
  
  kirbyLoc.add(vel);
  
  /*
  
  if (keyPressed){
    if (key == 'd'){
      yoshiLoc.add(3, 0);
    }
    if (key == 'a'){
      yoshiLoc.add(-3, 0);
    }
  }
  
  */
  
  if(kirbyLoc.x >= width || kirbyLoc.x <= 0){
    vel.x *= -1;
  }
  
  if(kirbyLoc.y >= 350 || kirbyLoc.y <= 0){
    vel.y *= -1;
  }
  
}