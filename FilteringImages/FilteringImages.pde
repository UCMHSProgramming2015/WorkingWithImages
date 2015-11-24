PImage Goku;
float scalefactor = 0.1;

void setup () {
  size(600,600);
  Goku = loadImage("Goku.JPG");
  
  
}


void draw () {
  image(Goku, mouseX, mouseY, Goku.width*scalefactor, Goku.height*scalefactor);
  filter(INVERT);
  
  
}