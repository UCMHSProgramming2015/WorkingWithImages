PImage potato;
PImage google;

void setup(){
  size(800,600);
  potato = loadImage("potato400.jpg");
  google = loadImage("google.jpg");
  potato.mask(google);
  imageMode(CENTER);
}

void draw(){
  background(255);
  image(potato,width/2,height/2);
}