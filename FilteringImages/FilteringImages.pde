PImage tortoise;
float sc = .3;

void setup(){
  size(475, 339);
  tortoise = loadImage("tortoise.jpg");
}

void draw(){
  background(tortoise);
  image(tortoise, mouseX, mouseY, tortoise.width*sc, tortoise.height*sc);
  imageMode(CENTER);
}