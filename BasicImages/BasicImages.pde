PImage matty;
float scaleFactor;

void setup(){
  matty = loadImage("hailey doesn't like taylor swift.jpg");
  
  background(0);
  
  size(800,600);
}

void draw(){
  scaleFactor = .6;
  image(matty,width/2,height/2,matty.width * scaleFactor, matty.height * scaleFactor);
  filter(GRAY);
}