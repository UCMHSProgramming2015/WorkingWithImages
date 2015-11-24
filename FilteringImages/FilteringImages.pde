PImage kobe;
float scaleFactor=0.5;



void setup () {
  size(800, 600);
  kobe=loadImage("Kobe.jpg");
}

void draw() {
  background(0);
  image(kobe, mouseX, mouseY, kobe.width*scaleFactor, kobe.height*0.5);
  filter(INVERT);
}