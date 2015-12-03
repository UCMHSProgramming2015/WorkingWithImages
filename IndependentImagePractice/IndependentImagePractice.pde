

PImage dog, galaxy,heart; //declare variables


void setup() {
  size(400,267); //set canvas size
  dog = loadImage("dog.jpg"); //assign variables
  galaxy = loadImage("galaxy.jpg");
  heart = loadImage("heart.png");
  dog.mask(heart); //heart covers dog

  
}

void draw(){
  background(0); //set background color to black
  image(dog,0,0); //put dog image at 0,0

  blend(galaxy,0,0,400,267,0,0,400,267,MULTIPLY); //multiply dog and galaxy colors
  filter(ERODE); //blurs in details
  
}