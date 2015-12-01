PImage knicks;
PImage punkin;
float scaleFactor=.5;
void setup(){
  size(800,600);
  knicks= loadImage("New-York-Knicks-Logo.jpg");
  background(0);
  punkin= loadImage("MehtaPumpkinSpooky.jpg");
  
  
}

void draw(){
  background(0);
  tint(0,255,0,128);
  image(knicks,mouseX,mouseY,200,200);
}