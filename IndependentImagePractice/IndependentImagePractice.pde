PImage beach; 
PImage beachball; 

PImage sunset;  //declare variables  
PVector loc = new PVector (0, height/4*3); 
PVector vel = new PVector (10, 20);

void setup() {
  size(800, 600);  //size of canvas
  beach=loadImage("beach.jpg");
  sunset=loadImage("sunset.jpg");

  beachball=loadImage("ball.png");  //load images
}

void draw() {
  image(sunset, 0, 0, 800, 600);

  image(beach, 0, 0, 800, 600);    //added images 
  beach.blend(sunset, 0, 0, sunset.width, sunset.height, 0, 0, beach.width, beach.height, SOFT_LIGHT);
  //blended sunset with beach
  image(beachball, loc.x, loc.y, 100, 100);  //beach ball location
  loc.add(vel);  //add velocity

  if (loc.x>width) {
    vel.x=-abs(vel.x);
  } else if (loc.x<0) {
    vel.x=abs(vel.x);
  }
  if (loc.y>height) {
    vel.y=-abs(vel.y);
  } else if (loc.y<0) {    
    vel.y=abs(vel.y);    //bouncing of beach ball
  }
}