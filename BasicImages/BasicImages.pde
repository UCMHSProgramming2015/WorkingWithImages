PImage g;
PVector loc;
PVector vel;
PVector a;

void setup(){
  size(800,800);
  g = loadImage("Giants.jpg");
  loc = new PVector(width/2,height/2);
  vel = new PVector(0,0);
  a = PVector.random2D();
  a.mult(.1);
}

void draw(){
  background(random(255),0,0);
 image(g,loc.x,loc.y);
 a = PVector.random2D();
 a.mult(.1);
 
  vel.add(a);
  loc.add(vel);
  vel.limit(10);
  
  if (loc.x >= width) {
      loc.x = 0;
    } else if (loc.x <= 0) {
      loc.x = width;
    }
    if (loc.y >= height) {
      loc.y = 0;
    } else if (loc.y <= 0) {
      loc.y = height;
    }
}