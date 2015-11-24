PImage tom; 
float scaleFacor = .1;

void setup(){
  size(800,600);
  tom = loadImage("Touchdown Tommy.jpg");
  noCursor();
}

void draw(){
  background(0);
  image(tom,100,50);
  filter(BLUR, 3);
}