//declare PImage
PImage bernie;
float scale = .1;

void setup(){
  size(800, 600);
  
  //load picture into PImage
  bernie = loadImage("Bernie.jpg");
  
  //draw image from center
  imageMode(CENTER);
}

void draw(){
  scale(random(1, 4));
  println(bernie.width);
  //display image
  image(bernie, random(width), random(height), bernie.width * scale, bernie.height * scale);
}