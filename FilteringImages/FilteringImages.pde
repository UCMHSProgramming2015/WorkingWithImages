//declare PImage
PImage Jerry;
PImage Trump;

void setup(){
  size(800, 600);
  
  //load picture into PImage
  Jerry = loadImage("Jerry_Seinfeld.jpg");
  Trump = loadImage("Trump Hair.jpg");
  
  
  //draw image from center
  imageMode(CENTER);
  
  background(0);
  noStroke();
}

void draw(){
  background(0);
  image(Jerry, mouseX, mouseY);
  image(Trump, 600, 300);
  filter(POSTERIZE, 3);

}