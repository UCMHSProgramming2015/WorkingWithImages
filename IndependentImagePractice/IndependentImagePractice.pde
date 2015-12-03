PImage main; //initalize allvariables needed for code
PImage mask;
PImage pic;
PImage pic1;
PImage pic2;
PImage pic3;
float canvas;

void setup() {
  canvas = 1; 
  size(900, 750); //size of canvas
  main = loadImage("Galaxy.jpg"); //load each image as a variable 
  mask = loadImage("GRD2014_wide_logo-1920x1200.jpg");
  pic = loadImage("6819282-jets-wallpaper.jpg");
  pic1 = loadImage("B5EovID.jpg");
  pic2 =loadImage("boston-celtics-logo-wallpaper-1024x768.jpg");
  pic3 =loadImage("New-York-Jets-2014-Football-Logo-Wallpaper.jpg");
  main.mask(mask);
}

void draw() {
  text("Use Keyboard to Move Through Slide Show", 100, 700); //draw text on screen
  textSize(32); //change text size
  fill(255); //change fill to white
  if (canvas == 1) {//if canvas equals 1 change the picture
    image(main, 0, 0);
    filter(DILATE);
  }
  if (canvas == 2) {//if canvas equals 2 change the picture
    image(pic1, 0, 0, 900, 750);
    filter(INVERT);
  }
  if (canvas == 3) {//if canvas equals 3 change the picture
    image(pic2, 0, 0, 900, 750);
    filter(BLUR,3);
  }
  if (canvas == 4) { //if canvas equals 4 change the picture
    image(pic3, 0, 0, 900, 750);
    filter(GRAY);
  }
}
void keyPressed() {//if keypressed increase the value of the canvas and change picture
  if (keyPressed == true) {
    if (keyCode == RIGHT) {
      canvas++;
    }
  }
  if (keyPressed == true) {//if keypressed decrease the value of the canvas and change picture
    if (keyCode == LEFT) {
      canvas--;
    }
  }
}