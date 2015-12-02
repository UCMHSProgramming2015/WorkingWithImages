PImage tacos;
PImage superman; 

void setup() {
  size(800,600);
  tacos = loadImage("tacos2.jpg");
  superman = loadImage("superman.jpg");
  superman.mask(tacos);
}

void draw() {
  background(map(mouseY,0,height,0,255));

  image(tacos, 0, 0);
  image(superman, 0,0);

}