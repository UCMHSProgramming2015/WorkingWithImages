PImage litty;
float scalefactor = .1;
void setup(){
  litty = loadImage("mega_lucario.png");
  size (1000,800);
}

void draw(){
  background(0);
  image(litty, mouseX, mouseY, litty.width *.5, litty.height*.5); 
}

void mousePressed(){
 if (keyCode == UP) {

 }
}