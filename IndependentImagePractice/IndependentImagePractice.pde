//declare image variables

PImage gsw;
PImage light;

void setup () {
  size(800, 800);  //set canvas
  gsw = loadImage("gsw.jpg");
  light = loadImage("2lightning.jpg");
  gsw.blend(light, 0, 0, 800, 800, 0, 0, 800, 800, SUBTRACT);  //blend the two images together
}



void draw () {
  image(gsw, 0, 0);
  tint(50, 235, 255);
  if (mousePressed) {
    tint(random(255), random(255), random(255));
  }
}