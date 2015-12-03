PImage screen0;
float scaleFactor;

void setup() {
  size(1000, 600);
  screen0 = loadImage("GRD2014_wide_logo-1920x1200.jpg");
  image(screen0, 0, 0, 1000, 600);
}
void draw() {
  scaleFactor = random(0.1, 0.9);
    filter(BLUR);
}