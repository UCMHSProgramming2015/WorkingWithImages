PImage beach; PImage vacation;

void setup(){
  size (800,600);
  vacation=loadImage("vacation spot.jpg");
  beach=loadImage("beach gray.jpg");
  vacation.mask(beach);
}

void draw (){
  background(map(mouseY,0,height,0,255));
  image(vacation,0,0);
}