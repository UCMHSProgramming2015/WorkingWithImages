PImage StephCurry2;
PImage Kobe;

void setup() {
 size(800,600);
 StephCurry2=loadImage("Steph Curry2.jpg");
 Kobe=loadImage("Kobe.jpg");
 StephCurry2.mask(Kobe);
}

void draw() {
  background(map(mouseY,0,height,0,255));
  image(Kobe,0,0);
  image(StephCurry2,0,0);
}