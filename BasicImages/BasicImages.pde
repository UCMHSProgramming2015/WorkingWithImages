float canvas;
PImage screen0;
PImage screen1;
float scaleFactor;
void setup() {
  size(1000, 600);
  canvas = 1;
  screen1 = loadImage("new-york-jets.png");
  screen0 = loadImage("GRD2014_wide_logo-1920x1200.jpg");
  image(screen0, 0, 0, 1000, 600);
}
void draw() {
  scaleFactor = random(0.1, 0.9);
  if (mousePressed == true) {
    canvas = 2;
  }
  if (canvas == 2) {
    image(screen1, random(width), random(height), 1000*scaleFactor, 600*scaleFactor);
  }
}