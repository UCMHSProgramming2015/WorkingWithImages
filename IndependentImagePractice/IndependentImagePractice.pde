PImage main;
PImage mask;
PImage screen0;
PImage pic;
PImage pic1;
PImage pic2;
PImage pic3;
float canvas;
void setup() {
  canvas = 1;
  size(900, 750);
  main = loadImage("Galaxy.jpg");
  mask = loadImage("GRD2014_wide_logo-1920x1200.jpg");
  mask.mask(main);
  pic = loadImage("6819282-jets-wallpaper.jpg");
  pic1 = loadImage("B5EovID.jpg");
  pic2 =loadImage("boston-celtics-logo-wallpaper-1024x768.jpg");
  pic3 =loadImage("New-York-Jets-2014-Football-Logo-Wallpaper.jpg");
}

void draw() {
  textSize(32);
  fill(255);
  text("Use Keyboard to Move Through Slide Show", 100, 700);
  if (mousePressed) {
    screen0 = loadImage("TD-Garden_T1.jpg");
    image(screen0, 0, 0, 900, 750);
    filter(BLUR);
  }
  if (canvas == 1) {
    image(mask, 0, 0);
    tint(255, 50);
  }
  if (canvas == 2) {
    image(pic1, 0, 0, 900, 750);
  }
  if (canvas == 3) {
    image(pic2, 0, 0, 900, 750);
  }
  if (canvas == 4) {
    image(pic3, 0, 0, 900, 750);
  }
}
void keyPressed() {
  if (keyPressed == true) {
    if (keyCode == RIGHT) {
      canvas++;
    }
  }
  if (keyPressed == true) {
    if (keyCode == LEFT) {
      canvas=1;
    }
  }
}