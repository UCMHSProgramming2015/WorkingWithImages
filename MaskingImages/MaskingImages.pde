PImage NewYork;
PImage Mask;

void setup(){
  size(300,168);
  NewYork = loadImage("NewYork.jpg");
}

void draw(){
  imageMode(CENTER);
  image(NewYork, width/2 , height/2);
}