//declare PImages
PImage trump;
PImage trash;

void setup() {

  size(434, 743);
  //initialize PImages
  trump = loadImage("trump.png");
  trash= loadImage("trash.jpg"); //the trash isnt really that obvious:(

  //use mask
  trump.mask(trash);
}

void draw() {
  background(0);
  //draw image
  image(trump, mouseX, mouseY);
}