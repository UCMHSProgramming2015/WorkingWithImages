PImage city, checkersfrenchfries, beach800600;
PImage ificouldfly, walkinginthewind, neverenough;

void setup() {
size(800,600);
ificouldfly = loadImage("checkersfrenchfries.jpg");
neverenough = loadImage("city.JPG");
walkinginthewind = loadImage ("beach800600.jpg");

walkinginthewind.blend(neverenough, 0, 0, 800, 600, 0, 0, 800, 600, SOFT_LIGHT);
walkinginthewind.mask(ificouldfly);

}

void draw() {
  image(walkinginthewind,0,0);
  filter(DILATE);
  

}