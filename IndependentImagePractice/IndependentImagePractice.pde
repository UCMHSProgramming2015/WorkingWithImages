//THRESHOLD
//declare PImage
PImage skull;
PImage cage;

void setup(){
size(800,800);

//Initialise PImage
skull = loadImage("skull.jpg");
cage = loadImage("cage.jpg");

//Blend texture into series
skull.blend(cage,0,0,skull.width,skull.height,0,0,cage.width,cage.height,MULTIPLY);  
}


void draw(){
  //draw the blended image
  image(skull,0,0);
  
  
}