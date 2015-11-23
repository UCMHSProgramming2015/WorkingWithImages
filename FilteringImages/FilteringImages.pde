PImage tardis;

void setup(){
  size(450,450);
  tardis = loadImage("tardis.jpg");
  imageMode(CENTER);
  image(tardis, width/2, height/2,450,450);
}

void draw(){
  
  filter(BLUR);
  
}