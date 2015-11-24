//declare Pmagnets and variables
int counter = 156500;
PImage magnet;
PImage mask;
int bottomBound, topBound;
//counter is width * height
int array [] = new int[counter];

void setup() {
  size(800,600);
  //load magnets
  magnet = loadImage("magnet.jpg");
}

void draw() {
  background(0);
  //taken from masking project and modified a little to fade in
  //do mask with random pixels, so need to set each pixel randomly
  for(int i = 0; i < counter; i++) {
    topBound = int(random(frameCount%255)); //top bound based on framecount
    bottomBound = topBound - 50; //lower bond for random color target
    array[i] = int(random(bottomBound, topBound));
  }
  //mask magnet
  magnet.mask(array);
  //show the magnet
  image(magnet, 0,0);
  filter(POSTERIZE,3); //filter for cool effect
}