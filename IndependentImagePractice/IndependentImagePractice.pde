PImage fire2;
PImage hotline;

void setup() {
  size(800, 600);
  fire2= loadImage("fire2.jpg");
  hotline = loadImage("hotline.jpg");
  hotline.mask(fire2);
}

void draw() {
  background(map(mouseY, 0, height, 0, 255));

  image(fire2, 0, 0);
  filter(BLUR, 10);
  image(hotline, 0, 0);
  
}