PImage Station;

void setup(){
  size(960,540);
  Station = loadImage("space_odyssey_3.jpg");
  Station.resize(960,540);
}

void draw(){
  background(0);
  image(Station,0,0);
  filter(THRESHOLD, .4);
}