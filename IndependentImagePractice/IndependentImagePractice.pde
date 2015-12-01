PImage kdot, mask, blend, tde;
int x1 = 0;
int y1 = 0;
int mx1 = 5;
int my1 = 3;
int x2 = 200;
int y2 = 200;
int mx2 = -5;
int my2 = -3;

void setup() {
  size(800,600);
  kdot = loadImage("kdot 2.jpg");
  mask = loadImage("mask.jpg");
  blend = loadImage("lol.jpg");
  tde = loadImage("tde.jpg");
kdot.mask(mask);
kdot.blend(blend,0,0,800,600,0,0,800,600,THRESHOLD);
}
void draw() {
  background(0);
  image(kdot,x1,y1);
  filter(THRESHOLD);
  image(tde,x2,y2);
  x1+= mx1;
  y1+= my1;
  x2+= mx2;
  y2+= my2;
}
  