PImage StephCurry;
PImage Kobe;

void setup() {
 size(800,600);
 StephCurry=loadImage("Steph Curry.jpg");
 Kobe=loadImage("Kobe.jpg");
 StephCurry.mask(Kobe);
}

void draw() {
  background(map(mouseY,0,height,0,255));
  image(Kobe,0,0);
  image(StephCurry,0,0);
}