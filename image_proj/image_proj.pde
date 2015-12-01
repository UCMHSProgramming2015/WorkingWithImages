PImage beach; 
PImage beachball; 
PImage sunset;  //declare variables  
PVector loc = new PVector (0, height/4*3), vel = PVector.random2D();

void setup() {
  size(800, 600);  //size of canvas
  beach=loadImage("beach.jpg");
  sunset=loadImage("sunset.jpg");
  beachball=loadImage("ball.png");
}

void draw() {
  background(0);
  image(beach, 0, 0, 800, 600);    //add beach picture and set it as the background\
  image(beachball, loc.x, loc.y, 100, 100);
  loc.add(vel);
  if (loc.x>=width) {
    vel.x=-vel.x;
  } else if (loc.x<=0) {
    vel.x = vel.x;
  }
  if (loc.y>=height) {
    vel.y=-vel.y;
  } else if (loc.y<=0) {
    vel.y= vel.y;
  }
}