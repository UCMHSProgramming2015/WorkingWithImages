PImage Temmie; //declare PImage Temmie
PVector loc, vel;

void setup() {
  size(800, 600);
  //load PImage
  Temmie = loadImage("Temmie.png");
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  

  imageMode(CENTER); //draw image from center
}

void draw() {
  background(0);
  //draw image
  image(Temmie, loc.x, loc.y);
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
filter(BLUR,3);




}