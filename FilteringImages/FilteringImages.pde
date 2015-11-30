PImage cboard;
float scale = 1;

void setup() {
  size(800,600);
  //align to center
  imageMode(CENTER);
  cboard = loadImage("3.jpg");
}

void draw() {
  //draw image
  image(cboard, width/2, height/2, cboard.width*scale, cboard.height*scale);  
  //add a filter
  filter(POSTERIZE,4);

}