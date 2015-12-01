PImage knicks;
PImage pumpkin;
float scaleFactor=.5;
void setup(){
  size(800,600);
  knicks=loadImage("New-York-Knicks-Logo.jpg");
  pumpkin=loadImage("MehtaPumpkinSpooky.jpg");
}
void draw(){
  background(0);
  image(knicks,mouseX,mouseY,200,100);
  filter(GRAY);
}
  