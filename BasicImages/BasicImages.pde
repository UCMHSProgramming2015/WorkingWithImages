PImage cat;

void setup(){
  cat = loadImage("cat.png");
  
  size(800,600);
}

void draw(){
  background(0);
  image(cat,mouseX-140, mouseY-140,cat.width,cat.height);
}