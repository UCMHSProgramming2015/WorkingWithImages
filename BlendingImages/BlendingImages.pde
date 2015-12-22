PImage zayn;
PImage smoke; 

void setup() {
  size(650, 433);
  zayn = loadImage("zayn.jpg");
  smoke= loadImage("smoke.jpg");
  zayn.blend(smoke, 0, 0, zayn.width, zayn.height, 0, 0, smoke.width, smoke.height,SCREEN);


}

void draw() {
  image(zayn, 0, 0);

}