PImage city, checkersfrenchfries, beach800600; 
PImage ificouldfly, walkinginthewind, neverenough;

// declared variables

void setup() {
size(800,600);

//size of canvas

ificouldfly = loadImage("checkersfrenchfries.jpg");
neverenough = loadImage("city.JPG");
walkinginthewind = loadImage ("beach800600.jpg");
//gave variables images, all images are size 800,600

walkinginthewind.blend(neverenough, 0, 0, 800, 600, 0, 0, 800, 600, SOFT_LIGHT);

// blend the picture of the city with the beach

walkinginthewind.mask(ificouldfly);

//masked the overall blended image with a checkerboard

}

void draw() {
  image(walkinginthewind,0,0);
  filter(DILATE);
  
  //added a filter

}