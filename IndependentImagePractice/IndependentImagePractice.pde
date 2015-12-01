PImage mainImage;
PImage mask;
PImage blend;
void setup() {
  size(650, 410);//set size
  //add images
  mainImage = loadImage("COUTINHO.jpg");
  mask = loadImage("TRON.jpg");
  blend = loadImage("GALAXY.jpg");
  //blend coutinho and galaxy
  mainImage.blend(blend, 0, 0, 640, 400, 0, 0, 640, 400, OVERLAY);
  //mask coutinho and tron
  mainImage.mask(mask);
}

void draw() {
  //draw image
  background(0);
  image(mainImage, 0, 0 );
}