//declare PImage
PImage series;
PImage cage;

void setup(){
size(800,800);

//Initialise PImage
series = loadImage("series.jpg");
cage = loadImage("cage.jpg");

//Blend texture into series
series.blend(cage,0,0,series.width,series.height,0,0,cage.width,cage.height,HARD_LIGHT);  
}


void draw(){
  //draw the blended image
  image(series,0,0);
  
  
}