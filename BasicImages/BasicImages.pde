PImage dog;



void setup() {
  size(500, 333);
  dog= loadImage("puppies.jpg");
  imageMode(CENTER);
   background(0);
}

void draw() {
  filter(BLUR);
  fill(dog.get(mouseX, mouseY));
  image(dog, width/2, height/2);
  ellipse(mouseX, mouseY, 20, 20);
  filter(POSTERIZE,9);
}