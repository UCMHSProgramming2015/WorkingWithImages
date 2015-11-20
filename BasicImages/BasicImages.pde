PImage tom;    
float scaleFacor = .1;

void setup(){
  size(800,600);
  tom = loadImage("Touchdown Tommy.jpg");
  noCursor();
}

void draw(){
  image(tom,mouseX,mouseY);
}