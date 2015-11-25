PImage sundog;
float sz;

void setup(){
  size(1300,866);
  sundog = loadImage("sundog.jpg");
  imageMode(CENTER);
  background(0);
  noStroke();
}

void draw(){
  sz = map(mouseY, 0 , height, 1, 30);
  
for(int i = 0; i < 30; i++){
  int x = int(random(width));
  int y = int(random(height));
  fill(sundog.get(x,y));
  ellipse(x,y, sz,sz);
  }
}