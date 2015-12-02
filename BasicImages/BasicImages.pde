float scalefactor = .1;
PImage Goku;


void setup () {
  size(800, 600);
  Goku = loadImage("Goku.JPG");
  

}

void draw () {
  background(255);
  image(Goku, mouseX, mouseY, Goku.width*scalefactor, Goku.height*scalefactor);
  
}