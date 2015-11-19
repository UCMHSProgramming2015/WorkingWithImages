PImage Turing;

void setup(){
  size(450,516);
  Turing = loadImage("5181f9a54f7c1edc5275e1fd270d738a_large.gif");
  Turing.resize(450,516);
}

void draw(){
  background(0);
  image(Turing,0,0);
}