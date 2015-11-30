PImage potato;
PVector loc;
PVector vel;

void setup(){
  size(800,600);
  potato = loadImage("potato.jpeg");
  imageMode(CENTER);
  loc = new PVector (random(width),random(height));
  vel = PVector.random2D();
  vel.mult(3);
}

void draw(){
  background(255);
  image(potato,loc.x,loc.y,width/2,height/2);
  loc.add(vel);
  if (loc.x >= width) {
    vel.x = -abs(vel.x);    
  } else if (loc.x <= 0) {
    vel.x = abs(vel.x);   
  }
  if (loc.y >= height) {
    vel.y = -abs(vel.y);
  } else if (loc.y <= 0) {
    vel.y = abs(vel.y);
  }
  filter(POSTERIZE,4);
}