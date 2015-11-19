PImage rare2;

void setup () {
  size(262,192);
  rare2 = loadImage("rare pepe 2.jpg");
}

void draw () {
  imageMode(CENTER);
  image(rare2,width/2,height/2);
  filter(INVERT);
}