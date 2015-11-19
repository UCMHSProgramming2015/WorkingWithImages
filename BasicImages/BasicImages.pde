//create images
PImage Turing;
PImage Artorias;
PImage Station;

void setup(){
  size(960,540);
  Turing = loadImage("5181f9a54f7c1edc5275e1fd270d738a_large.gif");
  Artorias = loadImage("DSPC_Artorias_Final.jpg");
  Station = loadImage("space_odyssey_3.jpg");
  
  Turing.resize(350,400);
  Station.resize(960,540);
}

void draw(){
  background(Station);
  image(Turing,0,0);
}