PImage litty;
float scalefactor = .1;
void setup(){
  litty = loadImage("mega_lucario.png");
  size (1000,700);
}

void draw(){
  background(0);
  image(litty, mouseX, mouseY, litty.width *.5, litty.height*.5); 
 
  filter(INVERT);
}