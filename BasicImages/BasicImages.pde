PImage lily;
float scaleFactor = random(.3,.98);



void setup() {
  size(800,600);
 lily = loadImage("water lily.jpg"); 
}

void draw(){

  image(lily,mouseX,mouseY,.5*lily.width,.5*lily.height);
  image(lily,random(width),random(height),scaleFactor*lily.width,scaleFactor*lily.height);
}