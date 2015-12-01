PImage beach; 
PImage beachball; 
PImage sunset;  //declare variables  
PVector loc = new PVector (0, height/4*3); PVector vel = new PVector (5,10);

void setup() {
  size(800, 600);  //size of canvas
  beach=loadImage("beach.jpg");
  sunset=loadImage("sunset.jpg");
  beachball=loadImage("ball.png");
}

void draw() {
  background(0);
  image(beach, 0, 0, 800, 600);    //add beach picture and set it as the background
  image(beachball, loc.x, loc.y, 100, 100);
  loc.add(vel);
  if (loc.x>width) {
    vel.x=-abs(vel.x);
  } else if (loc.x<0) {
   vel.x=abs(vel.x);
  }
  if (loc.y>height) {
    vel.y=-abs(vel.y);
  } else if (loc.y<0) {
    vel.y=abs(vel.y);
  }
}