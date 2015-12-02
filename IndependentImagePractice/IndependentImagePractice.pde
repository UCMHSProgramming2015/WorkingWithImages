PImage g;
PImage s;
PImage f;
PVector loc;
PVector vel;
PVector a;

void setup() {
  size(800, 450);
  loc = new PVector(width/2, height/2);
  vel = new PVector(0, 0);
  a = PVector.random2D();
  a.mult(.1);
  g = loadImage("g.jpg");
  s = loadImage("s.jpg");
  f = loadImage("football.jpg");
  g.mask(s);
}

void draw() {
  background(0);
  a = PVector.random2D();
  a.mult(.1);
  image(g, 0, 0, width, height);
  filter(POSTERIZE, 4);
  image(f, loc.x, loc.y, width*.1, height*.15);

  vel.add(a);
  loc.add(vel);
  vel.limit(5);

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