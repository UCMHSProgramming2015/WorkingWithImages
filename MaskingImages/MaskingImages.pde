//declare pimages

PImage mask;
PImage artorias;

void setup(){
  size(640,747);
  background(255);
  //initialize
  mask = loadImage("M42-LHaRGB-Grey.jpg");
  mask.resize(640,747);
  artorias = loadImage("DSPC_Artorias_Final.jpg");
  artorias.resize(640,747);
  
  //mask
  artorias.mask(mask);
  //draw
  image(artorias,0,0);
}

void draw(){

}