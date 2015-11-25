PImage cranberry;
PImage mask;
PImage mash2;

void setup(){
size(1600,1064);
mash2 = loadImage("mash2.jpg");
cranberry = loadImage("cranberry.jpg");
mask = loadImage("mask.jpg");
cranberry.mask(mask);
}

void draw(){
background(mash2);
image(cranberry, mouseX, mouseY);
}