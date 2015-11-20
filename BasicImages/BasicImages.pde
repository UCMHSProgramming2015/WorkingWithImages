PImage a;
PVector loc, vel;
void setup() {
  size(900, 600);
  a=loadImage("nice art.jpg");
  noCursor();
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
}

void draw () {
  background(250);
  //tint
  image(a, loc.x, loc.y, a.width*.3, a.height*.3);
  loc.add(vel);
  //if (loc.x + width>= width) {
  //  vel.x = -abs(vel.x);    
  //} else if (loc.x <= 0) {
  //  vel.x = abs(vel.x);    
  //}
  //if (loc.y  >= height) {
  //  vel.y = -abs(vel.y);
  //} else if (loc.y <= 0) {
  //  vel.y = abs(vel.y);
  //}
}