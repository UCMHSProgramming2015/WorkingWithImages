PImage heart;
PImage catcolored;

void setup() {
  size(800, 400);
  heart = loadImage("heart.jpg");
  catcolored = loadImage("cat1.jpg");
  catcolored.mask(heart);
}
void draw() {
  background(0);
  
  image(catcolored, 0,0);
}