PImage supsaiyan;
PImage saiyan;


void setup() {
  size(500, 600);
  saiyan = loadImage("saiyan.jpg");
  supsaiyan = loadImage("Supersaiyan.jpg");
  supsaiyan.mask(saiyan);
  saiyan.mask(supsaiyan);
}

void draw() {
 background(map(mouseY,0,height,0,255));
 image(saiyan,0,0);
 image(supsaiyan,0,0);
}