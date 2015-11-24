PImage forest;
PImage nightsky;
PImage tiefighter;

void setup(){
  size(800,600);
  forest = loadImage("forest800x600-1.jpg");
  nightsky = loadImage("sky800x600.jpg");
  tiefighter = loadImage("TIEfighter40x40.jpg");
  tiefighter.filter(POSTERIZE,4);
}

void draw(){
  background(nightsky);
  blend(forest,0,0,width,height,0,0,width,height,LIGHTEST);
  image(tiefighter,width/2,height/2);
}