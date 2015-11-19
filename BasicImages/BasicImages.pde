PImage rare1;
float multx;
float multy;

void setup () {
  size(890,600);
  imageMode(CENTER);
  rare1 = loadImage("rare pepe 1.jpg");
  
  multx = .1;
  multy = .1;
}

void draw () {
  multx += .01;
  multy += .01;
  image(rare1,width/2,height/2,rare1.width*multx,rare1.height*multy);
}