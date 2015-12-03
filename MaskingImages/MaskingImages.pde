PImage demon;
PImage point; //images

void setup(){
  size(182,183); //canvas
  demon = loadImage("demon trump.jpg");
  point = loadImage("trump point.jpg");
  demon.blend(point, 0, 0, 182, 183, 0, 0, 182, 183, ADD); //mask
  background(demon); //cover canvas with masked image
}