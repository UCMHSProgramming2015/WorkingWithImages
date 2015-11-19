PImage gabe;
void setup() {
  background(255);
  gabe = loadImage("gabe.png");  
  size(560,320);
}
void draw() {
  image(gabe, 0, 0, gabe.width, gabe.height);
  filter(INVERT);
}