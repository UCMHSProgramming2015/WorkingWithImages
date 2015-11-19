PImage friendlinessPellets;

void setup(){
 size(800, 600);
 friendlinessPellets = loadImage("flowey.jpg");
}

void draw(){
  image(friendlinessPellets, 0, 0);
}