PImage superman,funny;
int scalefactor= 1;

void setup() {
  size(800,600);
  frameRate(10);
  superman =loadImage("pewdiepie superman.jpg");
  funny = loadImage("funny face.jpg");
 
}

void draw() {
  noFill();
  
 image(funny,0,0);
 
  
  tint ( random (255),random(255),random(255));
   image(superman,random(width),random(height));
}