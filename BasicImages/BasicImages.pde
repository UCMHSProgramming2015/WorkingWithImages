<<<<<<< HEAD
float scalefactor = .1;
PImage Goku;


void setup () {
  size(800, 600);
  Goku = loadImage("Goku.JPG");
  

}

void draw () {
  background(255);
  image(Goku, mouseX, mouseY, Goku.width*scalefactor, Goku.height*scalefactor);
  
=======
PImage Goku;
float scalefactor = 0.1;

void setup () {
  size(600,600);
  Goku = loadImage("Goku.JPG");
  
  
}


void draw () {
  image(Goku, mouseX, mouseY, Goku.width*scalefactor, Goku.height*scalefactor);
  
  
  
>>>>>>> refs/remotes/origin/Filtering-Images
}