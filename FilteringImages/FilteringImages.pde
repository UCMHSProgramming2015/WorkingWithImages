PImage doge;
float dogeWidth;
float dogeHeight;

void setup() {
  background(255);
  size(452, 446);
  doge = loadImage("doge.jpg");
  dogeWidth = doge.width;
  dogeHeight = doge.height;
}

void draw() {
  imageMode(CENTER);
  image(doge, width/2, height/2, dogeWidth * 2, dogeHeight * 2);
  filter(POSTERIZE, 6);
}