PImage Jerry;
PImage NBC;

void setup() {
  size(800,600);
  Jerry = loadImage("Jerry1.jpg");
  NBC = loadImage("NBC.png");
  NBC.blend(Jerry, 0, 0, NBC.width, NBC.height, 0, 0, NBC.width, NBC.height, SOFT_LIGHT);
}
  
 void draw() {
   background(0);
   image(NBC, mouseX, mouseY);
 }
 
 