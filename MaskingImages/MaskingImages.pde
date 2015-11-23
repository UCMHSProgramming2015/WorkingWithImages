
PImage series;
PImage tunnel;



void setup(){
 size(1500,1500);
 series = loadImage("series.jpg");
 tunnel = loadImage("tunnel.jpg");
 series.mask(tunnel);
}

void draw(){
background(0);
image(series,mouseX,mouseY);
 
  
  
}