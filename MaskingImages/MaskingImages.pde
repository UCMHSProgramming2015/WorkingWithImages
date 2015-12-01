PImage mask;
PImage mainImage;

void setup() {
  size(197,256);
  mainImage = loadImage ("niallhoranwithglasses.jpg");
  mask = loadImage ("nice.jpg");
  mainImage.mask(mask);
}

void draw() {
  image(mainImage, 0, 0);
}