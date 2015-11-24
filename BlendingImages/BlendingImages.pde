//DECLARE piMAGE
PImage series;
PImage texture;

void setup(){
size(800,800);

//Initialise PImage
series = loadImage("series.jpg");
texture = loadImage("texture.jpg");

//Blend texture into series
series.blend(texture,0,0,series.width,series.height,0,0,texture.width,texture.height,ADD);  
}


void draw(){
  //draw the blended image
  image(series,0,0);
  
  
}