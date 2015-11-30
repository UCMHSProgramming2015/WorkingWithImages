PImage yoshi;
PImage kirby;
PImage mariobackground;
PImage haro;  //to be blended with kirby
PImage cloud;
PImage galaxy;
PImage yoshiFlip;

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
  yoshiFlip = loadImage("yoshiFlip.png");
  
  yoshiLoc = new PVector(100, 315);  //x = 100, y = 315
  kirby.blend(haro, 0, 0, kirby.width, kirby.height, 0, 0, haro.width, haro.height, SCREEN);
  
  kirbyLoc = new PVector(400, 340);
  
  cloud.mask(galaxy);
  
  vel = new PVector(2, 2);
}

void draw(){
  background(mariobackground);
      
  filter(GRAY);
  
  image(yoshi, yoshiLoc.x, 315, yoshi.width*.25, yoshi.height*.25);
  
  image(kirby, kirbyLoc.x, kirbyLoc.y, kirby.width*.5, kirby.height*.5);

  image(cloud, yoshiLoc.x-100, 25);

  
  kirbyLoc.add(vel);
  
    
  if (keyPressed){
    if (key == 'd'){
      yoshiLoc.add(3, 0);
    }
    if (key == 'a'){
      background(mariobackground);
      filter(GRAY);
      image(kirby, kirbyLoc.x, kirbyLoc.y, kirby.width*.5, kirby.height*.5);
      image(yoshiFlip, yoshiLoc.x, 315, yoshiFlip.width*.25, yoshiFlip.height*.25 );
      image(cloud, yoshiLoc.x-100, 25);
      yoshiLoc.add(-3, 0);
    }
  }
  
  
  if(kirbyLoc.x >= width || kirbyLoc.x <= 0){
    vel.x *= -1;
  }
  
  if(kirbyLoc.y >= 350 || kirbyLoc.y <= 0){
    vel.y *= -1;
  }
  
  if(kirbyLoc.x >= yoshiLoc.x && kirbyLoc.x <= yoshiLoc.x){
    vel.x *= -1;
  }
  
  if(yoshiLoc.x <= 0){
    yoshiLoc.mult(0);
  }
  
  if(yoshiLoc.x >= width-60){
    yoshiLoc.mult(0);
    print("    what are you DOING");
  }
}