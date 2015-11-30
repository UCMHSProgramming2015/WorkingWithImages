
PImage cac;
float sz;
void setup(){
  size(760,893);
cac = loadImage("PRICKLY PEAR.jpg");
imageMode(CENTER);
background(0);
noStroke();
}


void draw(){
  sz = map(mouseY,0,height,1,20);
for (int i = 0; i < 30; i++) {
int x = int(random(width));
int y = int(random(height));
  fill(cac.get(x, y));
  ellipse(x,y,sz,sz);
}
}