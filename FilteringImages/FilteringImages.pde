PImage pr;
void setup(){
  size(1200,819);
  pr = loadImage("powerrangers.jpg");
  imageMode(CENTER);
}

void draw(){
  image(pr,600,411);
  filter(INVERT);
}