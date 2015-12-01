PImage a;
void setup() {
  size(400, 516);
  a=loadImage("jc with puppies.jpg");
  noCursor();
}

void draw() {
  
  image(a, 0, 0);
  filter(GRAY);

}