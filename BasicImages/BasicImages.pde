PImage cat;

void setup(){
  cat = loadImage("cat.png");
  
  size(800,600);
}

void draw(){
  image(cat,0,0);
}