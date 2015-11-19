PImage Artorias;

void setup(){
  size(640,747);
  Artorias = loadImage("DSPC_Artorias_Final.jpg");
  Artorias.resize(640,747);
}

void draw(){
  background(0);
  image(Artorias,0,0);
  filter(POSTERIZE, 4);
}