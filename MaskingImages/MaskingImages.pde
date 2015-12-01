PImage Cruise;
PImage Pi;

void setup() {
  background(100,149,237);
  size(500, 500);
  Cruise = loadImage("Tom_Cruise_1.jpeg.jpg");
  Cruise.resize(500, 500);
  Pi = loadImage("Pi3.jpg");
  Pi.resize(500,500);
  imageMode(CENTER);
  Cruise.mask(Pi);
}

void draw() {
  image(Cruise, width/2, height/2);
}