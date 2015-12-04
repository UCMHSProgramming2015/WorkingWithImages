PImage trees2; 
int scalefactor = 2;
float x, y;
void setup() {
 // int dimension = trees2.width * trees2.height;
  size(800,800);
  x = width/2;
  y = height/2; 
  trees2=loadImage("trees2.jpg"); 


 {// trees2.loadPixels();
 // for (int i = 0; i < dimension; i += 2) { 
 //   trees2.pixels[i] = color(0, 0, 0); 
  } 
//  trees2.updatePixels();
}
//}


void draw() {
  image(trees2, trees2.width/6, trees2.height/6);
}
 