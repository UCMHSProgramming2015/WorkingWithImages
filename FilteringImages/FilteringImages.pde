PImage lights;
void setup(){
  size(800,600);
  lights = loadImage("lights.jpg");
  
}

void draw(){
 background(0);
 image(lights, 0, 0, width, height);
 filter(INVERT);
 
 
  
}