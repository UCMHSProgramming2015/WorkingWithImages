PImage forest;
PImage nightsky;

void setup(){
  size(800,600);
  forest = loadImage("forest800x600-1.jpg");
  nightsky = loadImage("sky800x600.jpg");
}

void draw(){
  background(nightsky);
  blend(forest,0,0,width,height,0,0,width,height,LIGHTEST);
}