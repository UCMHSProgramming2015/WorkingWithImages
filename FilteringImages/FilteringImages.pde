PImage cera;

void setup(){
  size(500,500);
  cera = loadImage("bpmc.jpg");
}

void draw(){
  image(cera,0,0,width,height);
  filter(POSTERIZE,2);
}