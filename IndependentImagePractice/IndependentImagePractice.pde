PImage g;
PImage s;

void setup(){
  size(800,450);
  g = loadImage("g.jpg");
  s = loadImage("s.jpg");
  //g.mask(s);
}

void draw(){
  background(0);
  image(g,0,0,width,height);
}