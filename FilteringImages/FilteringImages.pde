PImage cera;

void setup(){
  frameRate(10);
  size(917,510);
  cera = loadImage("bpmc.jpg");
  background(cera);
}

void draw(){
    background(cera);
  image(cera,random(width),random(height),cera.width*(.16),cera.height*(.3));
  filter(ERODE);
}