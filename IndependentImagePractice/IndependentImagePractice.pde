PImage background; //background declared
PImage spacecore; //declared spacecore
PImage what; //declared what
PImage mask; //declared mask
PVector loc,vel; //declared PVectors loc and vel
void setup() {
  size(1680, 1050);
  background = loadImage("Space.jpg"); //loads "space.jpg" image
  spacecore = loadImage("SpaceCore.png"); //loads "SpaceCore.png" image etc.
  what = loadImage("What.jpg");
  mask = loadImage("mask2.jpg");
  what.mask(mask); //puts mask on top of 'what' image
  loc = new PVector(width/2,height/2); //creates new PVector position
  vel = PVector.random2D(); //creates velocity PVector
  imageMode(CENTER); //image origin in the center
  textSize(50);
}

void draw() {
  loc.add(vel); //creates velocity
  background(background); //puts image as the background
  blend(what, 0, 0, 259, 194, 300, 50, 259, 194, LIGHTEST); //All dark image spots blend to the background
  image(spacecore,loc.x,loc.y); //SPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACE core flying
  text("SPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACE",loc.x - 100, loc.y - 100); //Spacecore dialouge

  filter(ERODE); //Erodes and muddies the images
}