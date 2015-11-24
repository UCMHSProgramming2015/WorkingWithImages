//name images
PImage derpy;
PImage background;

void setup(){
  //set canvas size
  size(800,800);
  
  //load images
  derpy = loadImage("Derpy.png");
  background = loadImage("Sunburst.jpg");
}

void draw(){
  //display images
  image(background, 0,0, width, height);
  image(derpy, 250, 150);
}
  