PImage a, b;
void setup() {
  size(400, 400);
  a=loadImage("jc with puppies.jpg");
  b=loadImage("20061124jcn-2.jpg");
  noCursor();
  b.mask(a);
}

void draw() {
  background(0, 200, 255);
  image(b, 0, 0);
}