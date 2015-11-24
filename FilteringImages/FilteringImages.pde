PImage tacos; 
float scaleFactor = .252;

void setup() {
  size(800, 600);
  tacos = loadImage("01_Tacos_al_Pastor.jpg");
}

void draw() {
  image(tacos, 0, 0, tacos.width*scaleFactor, tacos.height*scaleFactor);
  filter(BLUR, 2);
  filter(ERODE);
  filter(GRAY);
 
}