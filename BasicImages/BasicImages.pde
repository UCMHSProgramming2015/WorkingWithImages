PImage disgusting;
float scaleFactor;

void setup(){
  size(800,600);
  disgusting = loadImage("hynnnrrrgh.jpg");
}

void draw(){
  scaleFactor = random(.1, 2);
  background(0);
  image(disgusting, random(width), random(height), disgusting.width*scaleFactor, disgusting.height*scaleFactor);
  }