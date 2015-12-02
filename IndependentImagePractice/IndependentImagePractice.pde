PImage fire2;
PImage hotline;
PImage drake;
PVector loc = new PVector (width/2, height/2), vel = PVector.random2D();

void setup() {
  size(800, 600);
  fire2= loadImage("fire2.jpg");
  hotline = loadImage("hotline.jpg");
  hotline.mask(fire2);
  drake = loadImage("drake.jpg");
}

void draw() {
  background(map(mouseY, 0, height, 0, 255));
  image(fire2, 0, 0);
  filter(BLUR, 10);
  image(hotline, 0, 0);
  image(drake, loc.x, loc.y);
  loc.add(vel);
  if (loc.x>width) {
    loc.x=0;
  } else if (loc.x<0) {
    loc.x =width;
  }
  if (loc.y>height) {
    loc.y = 0;
  } else if (loc.y <0) {
    loc.y = height;
  }
}