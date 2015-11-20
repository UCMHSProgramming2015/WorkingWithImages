PImage superman,funny;
int scalefactor= 2;

void setup() {
  size(800,600);
  superman =loadImage("pewdiepie superman.jpg");
  funny = loadImage("funny face.jpg");

}

void draw() {
  background(0);
 
  image(funny,0,0);
   image(superman,mouseX,mouseY,superman.width*scalefactor,superman.height*scalefactor);
  
}

void mousePressed() {
  if ( keyCode == UP) {
    scalefactor +=1;
  }
}