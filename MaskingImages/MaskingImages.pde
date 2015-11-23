PImage corn;
PImage popcorn;

void setup(){
  size(800,600);
  corn = loadImage("corn.jpg");
  popcorn = loadImage("popcorn.jpg");
  
  imageMode(CENTER);
  
  background(0);
  noStroke();
 
 
  
}
  
void draw(){
  background(0);
  image(popcorn, mouseX, mouseY);
  popcorn.mask(corn);
}