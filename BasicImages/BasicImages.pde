PImage img1;
float scl = 0.1;
PVector loc, vel;

void setup() {
  size(800,600);
  img1 = loadImage("1.jpg");
  loc = new PVector(0,0);
  vel = new PVector(2, 1);
}

void draw() {
  //draw image from center
  imageMode(CENTER);
  
  //add position
  loc.add(vel);
  
  //display image
  image(img1,loc.x,loc.y, img1.width*scl, img1.height*scl);
}