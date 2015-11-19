PImage okapi;


void setup(){
  size(800,600);
  okapi = loadImage("okapi.png");

}


void draw(){
  background(0);
  image(okapi,mouseX, mouseY, okapi.width/5,okapi.height/5);
}