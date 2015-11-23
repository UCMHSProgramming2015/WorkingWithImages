//declare Pimages and variables
int counter = 156500;
PImage image;
PImage mask;
//counter is width * height
int array [] = new int[counter];

void setup() {
  size(800,600);
  //load images
  image = loadImage("image.jpg");
  //mask = loadImage("mask.jpg");
  //mask the image
  //image.mask(mask);
  imageMode(CENTER); //so mouse is in the center
}

void draw() {
  background(0);
  //do mask with random pixels, so need to set each pixel randomly
  for(int i = 0; i < counter; i++) {
    array[i] = int(random(255));
  }
  //mask image
  image.mask(array);
  //show the image
  image(image, mouseX,mouseY);
}