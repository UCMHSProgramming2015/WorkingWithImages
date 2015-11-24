PImage pooh;   //declare variables
float scaleFactor=.5;
PVector loc = new PVector();
PVector vel = new PVector();
PImage mask;

void setup() {
  size(500, 500);

  pooh = loadImage("pooh.gif");  //load the image 
  imageMode(CORNERS);
  noCursor();
  loc = new PVector(250, 250);   //set values for vel and loc 
  vel = new PVector(1, 1);
  mask = loadImage("mask.jpg");

  pooh.mask(mask);
}



void draw() {
  background(0);


  image(pooh, loc.x, loc.y);
}