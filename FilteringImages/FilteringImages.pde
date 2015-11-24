PImage g;

void setup(){
  size(800,600);
  g = loadImage("Giants_1.jpg");
}

void draw(){
  image(g,0,0,width,height);
  noCursor();
  filter(POSTERIZE,3);
}