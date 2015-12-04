PImage kirby; 
int scalefactor = 2;

void setup() {
  size(800,800);
  
  kirby=loadImage("kirby.gif"); 
}

void draw() {
  //background(0);
  noCursor();
 tint(200, 10,10);
  image(kirby, mouseX, mouseY, kirby.width/4, kirby.height/4);
  tint(random(255), random(255), random(255)); 
  image(kirby, random(width), random(height), kirby.width/4, kirby.height/4);
}