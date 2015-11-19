PImage angry;
PImage cocky;
PImage derpy;
PImage disgusted;
PImage done;
PImage fake;
PImage frazzled;
PImage hungry;
PImage insecure;
PImage jubilant;
PImage squinty;

void setup(){
  size(600,600);

  angry = loadImage("angry.jpg");
  cocky = loadImage("cockysmile.jpg");
  derpy = loadImage("derpy.jpg");
  disgusted = loadImage("disgusted.jpg");
  done = loadImage("done.jpg");
  fake = loadImage("fakesmile.png");
  frazzled = loadImage("frazzled.jpg");
  hungry = loadImage("hungry.jpg");
  insecure = loadImage("insecure.jpg");
  jubilant = loadImage("jubilant.jpg");
  squinty = loadImage("squinty.jpg");
}

void draw(){
  noStroke();
  colorMode(HSB, 600);
  for (int i = 0; i < 600; i++) {
    for (int j = 0; j < 600; j++) {
      stroke(i, j, 600);
      point(i, j);
    }
  }
    image(disgusted,0,0);
}