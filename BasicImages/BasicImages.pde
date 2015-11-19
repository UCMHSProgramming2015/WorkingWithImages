PImage doge;
PImage derp;
PImage Cruise;
PImage Cruise2;

void setup() {
  size(226,223);
  background(255);
  doge = loadImage("doge.jpg");
  derp = loadImage("derp.jpg");
  Cruise = loadImage("Tom_Cruise_1.jpg");
  Cruise2 = loadImage("Tom_Cruise_2.jpeg");
}

void draw() {
  background(255);
  imageMode(CORNER);
  image(doge, 0,0);
  imageMode(CENTER);
  image(Cruise, mouseX, mouseY, Cruise.width * 0.1, Cruise.height * 0.1);
  /*image(derp, 200, 200, derp.width * 0.3, derp.height * 0.3);

   image(Cruise2, 200, 500, Cruise2.width * 0.3, Cruise2.height * 0.3);*/
}