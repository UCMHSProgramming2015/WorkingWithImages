PImage mainImage;
PImage mask;

void setup () {
  size(960,600);
  mainImage = loadImage("dr spaceman.jpg");
  image(mainImage,0,0);
  mainImage.resize(800,600);
  mask = loadImage("murca1.jpg");
  imageMode(CENTER);
  mask.mask(mask);
  image(mask,width/2,height/2);
  mask.resize(400,300);
}

void draw () {
  
}