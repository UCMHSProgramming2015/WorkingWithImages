PImage tortoise;
PImage skell;


void setup(){
  size(800, 600);
  tortoise = loadImage("tortoise2.jpg");
  skell = loadImage("skell.jpg");
  tortoise.blend(skell, 0, 0, tortoise.width, tortoise.height, 0, 0, skell.width, skell.height, ADD);
}

void draw(){
  image(tortoise, 0, 0);
}