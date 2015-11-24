PImage StephCurry;
float scaleFactor=0.5;



void setup () {
  size(800, 600);
  StephCurry=loadImage("Steph Curry.jpg");
}

void draw() {
  
  image(StephCurry, mouseX, mouseY, StephCurry.width*scaleFactor, StephCurry.height*0.5);
  filter(INVERT);
}