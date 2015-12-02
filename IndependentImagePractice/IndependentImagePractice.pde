PImage g;           //variables for images
PImage s;
PImage f;
PVector loc;       //variables for PVector controlling movement of the football
PVector vel;
PVector a;

void setup() {
  size(800, 450);
  //location vector
  loc = new PVector(width/2, height/2);
  //velocity vector
  vel = new PVector(0, 0);    
  //acceleration vector
  a = PVector.random2D();                       
  a.mult(.1);             
  
  //Setting up variables
  g = loadImage("g.jpg");                       
  s = loadImage("s.jpg");
  f = loadImage("football.jpg");
  //maskes the snow image to the football field
  g.mask(s);
}

void draw() {
  background(0);
  a = PVector.random2D();
  a.mult(.1);
  //loads image of field
  image(g, 0, 0, width, height);
  //filter for field
  filter(POSTERIZE, 4);
  //loads football image
  image(f, loc.x, loc.y, width*.1, height*.15);
  
  //gives the football movement
  vel.add(a);
  loc.add(vel);
  vel.limit(5);

  //football wraps around when going off screen
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