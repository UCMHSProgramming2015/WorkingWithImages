//declare Pmagnets and variables
int counter = 156500;
PImage magnet;
PImage meteor;
PImage shower;
int bottomBound, topBound;
//counter is width * height
int array [] = new int[counter];
int i = 0;

void setup() {
  size(1000,313);
  //load magnets
  magnet = loadImage("magnet.jpg");
  meteor = loadImage("meteor.jpg");
  shower = loadImage("shower.jpg");
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
  filter(POSTERIZE,2); //filter for cool effect
  
  //blend shower image with meteor image, but need to reset first to avoid the "adding on" effect
  shower = loadImage("shower.jpg");
  i++;
  if(i>shower.height) { //if the iterator is greater than the height of meteor, set it back to 0
   i=0; 
  }
  //make it seem like the meteor is moving
  shower.blend(meteor, 0,-i,meteor.width, meteor.height, 0,0,shower.width,shower.height, ADD);
  //display the image next to other image
  image(shower, magnet.width, 0);
  //affected by posterize filter
}