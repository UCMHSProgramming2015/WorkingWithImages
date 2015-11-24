//declare PImage
PImage bernie;
float scale = .1;
float sz = 3;

void setup(){
  size(800, 600);
  
  //load picture into PImage
  bernie = loadImage("Bernie.jpg");
  
  //draw image from center
  imageMode(CENTER);
  
  background(0);
  noStroke();
}

void draw(){
  image(bernie, 400, 400);

}