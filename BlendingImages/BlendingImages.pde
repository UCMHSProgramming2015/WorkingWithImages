PImage potato;
PImage falco;

void setup(){
  size(400,400);
  falco = loadImage("pp,550x550.jpg");
  potato = loadImage("potato400.jpg");
}

void draw(){
  background(potato);
  blend(falco,0,0,400,400,0,0,400,400,BURN);
  
  
}