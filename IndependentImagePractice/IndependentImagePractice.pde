//initialize images
PImage m, d;
//initialize vectors
PVector loc, vel, acc;
void setup() {
  //canvas size
  size(600, 600);
  //load images
  m=loadImage("monet lillies.jpg");
  d=loadImage("d1.png");
  //assign vectors 
  loc= new PVector(width/2, height/2);
  vel = new PVector(random(-1, 1), random(-1, 1));
  //acc= PVector.random2D();
}

void draw() {
 //vel.add(acc);
  //draw image
  image(m, 0, 0);
  image(d, loc.x, loc.y);
  //make dragonfly image move
  loc.add(vel);
  //acc.mult(.1);
 
  //wrap dragonfly's position
  if (loc.x >= width) {
    loc.x = 0;
  } else if (loc.x + 150 <= 0) {
    loc.x = width;
  }
  if (loc.y >= height) {
    loc.y = 0;
  } else if (loc.y + 150 <= 0) {
    loc.y = height;
  }
}