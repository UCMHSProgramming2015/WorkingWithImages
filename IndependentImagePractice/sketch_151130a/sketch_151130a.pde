PImage tower;

void setup() {
  size(100, 100);
  tower = loadImage("trees2.jpg");
  int dimension = tower.width * tower.height;
  tower.loadPixels();
  for (int i = 0; i < dimension; i += 2) { 
    tower.pixels[i] = color(0, 0, 0); 
  } 
  tower.updatePixels();
}

void draw() {
  image(tower, 0, 0);
}