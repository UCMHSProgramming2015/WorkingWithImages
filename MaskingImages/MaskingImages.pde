PImage demon;
PImage point; //images

void setup(){
  size(182,183); //canvas
  demon = loadImage("demon trump.jpg");
  point = loadImage("trump point.jpg");
  demon.mask(point); //mask
  background(demon); //cover canvas with masked image
}