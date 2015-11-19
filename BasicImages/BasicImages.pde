PImage cobra1;
float ScaleFactor;

void setup() {
  size(1000,600);
  cobra1=loadImage("cobra.jpg");
  image(cobra1,0,0,200,200);
  ScaleFactor=.01;
  
}

void draw() {
  background(0);
 
  image(cobra1,mouseX, mouseY);
  filter(THRESHOLD,.4);

}