//create images
PImage Turing;
PImage Artorias;
PImage Station;

void setup(){
  size(800,600);
  background(0);
  Turing = loadImage("5181f9a54f7c1edc5275e1fd270d738a_large.gif");
  Artorias = loadImage("DSPC_Artorias_Final.jpg");
  Station = loadImage("space_odyssey_3.jpg");
}

void draw(){
  image(Turing,0,0);
}