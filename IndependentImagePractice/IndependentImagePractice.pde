PImage m,d;
PVector loc, vel;
void setup(){
  size(600,600);
  m=loadImage("monet lillies.jpg");
  d=loadImage("d1.png");
  loc= new PVector(width/2, height/2);
  vel = PVector.random2D();
}

void draw(){
  image(m,0,0);
  image(d,loc.x,loc.y);
  loc.add(vel);
}