PImage ocean;
PImage fin;
float x,y;
PVector sz;

void setup() {
  size(200,200);
  background(0);
  ocean = loadImage("Ocean.jpg");
  ocean.resize(width,height);
  fin = loadImage("Fin.png");
  y = random(height);
  x = 0;
  sz = new PVector(fin.width,fin.height);
}

void draw() {
  fin.resize(round(sz.x/y),round(sz.y/y));
  image(ocean, 0, 0);
  image(fin, x, y);
}