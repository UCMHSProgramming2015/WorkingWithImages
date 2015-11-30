PImage tortoise;
PImage skell;


void setup(){
  size(320, 320);
  tortoise = loadImage("tortoise2.jpg");
  skell = loadImage("skell.jpg");
  tortoise.blend(skell, 0, 0, tortoise.width, tortoise.height, 0, 0, skell.width, skell.height, ADD);
}

void draw(){
  background(155);
  image(tortoise, 0, 0);
  filter(BLUR);
  fill(0);
  text("Don't hurt the tortoise robots", 80, 280);
}