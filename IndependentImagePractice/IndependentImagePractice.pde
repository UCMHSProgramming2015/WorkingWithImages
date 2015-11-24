//declare PImages
PImage corn;
PImage popcorn;
PImage Jerry;
PImage NBC;

//declare PVectors
PVector loc;
PVector vel;


void setup(){
  size(800,600);
  
  //load and initialize images into Processing
  corn = loadImage("corn.jpg");
  popcorn = loadImage("popcorn.jpg");
  Jerry = loadImage("Jerry1.jpg");
  NBC = loadImage("NBC.png");
  
  //initialize location and velocity vectors
  loc = new PVector(random(width),random(height));
  vel = new PVector(5,5);
  
  //draws image at center of screen
  imageMode(CENTER);
  
  //changes background and stroke
  background(0);
  noStroke();
  
  //blends NBC into Jerry
  NBC.blend(Jerry, 0, 0, NBC.width, NBC.height, 0, 0, NBC.width, NBC.height, SOFT_LIGHT);
  
  //slows frame rate so flashing background is not overwhelming
  frameRate(10);
}
  
void draw(){
  //sets background
  background(random(255), random(255), random(255));
   
  //draws image at location vector
  image(popcorn, loc.x, loc.y);
  image(NBC, mouseX, mouseY);
  
  //masks popcorn onto corn
  popcorn.mask(corn);
  
  //adds velocity to location vectors
  loc.add(vel);
  
  //sets parameters that allow image to bounce around screen
  if (loc.x > width){
    vel.x = -vel.x;
  }
  if (loc.x < 0){
    vel.x = -vel.x;
  }
  if (loc.y > height){
    vel.y = -vel.y;
  }
  if (loc.y < 0){
    vel.y = -vel.y;
  }
}