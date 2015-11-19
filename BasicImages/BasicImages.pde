//create images
PImage Turing;
PImage Artorias;
PImage Station;
int pix = 2;

void setup(){
  size(960,540);
  Turing = loadImage("5181f9a54f7c1edc5275e1fd270d738a_large.gif");
  Artorias = loadImage("DSPC_Artorias_Final.jpg");
  Station = loadImage("space_odyssey_3.jpg");
  Station.resize(960,540);
}

void draw(){
  background(Station);
  for(int x = 0; x< width; x+= pix){
    for(int y = 0; y < height; y += pix){
      fill(Station.get(x,y));
      rect(x,y,pix,pix);
    }
  }
}