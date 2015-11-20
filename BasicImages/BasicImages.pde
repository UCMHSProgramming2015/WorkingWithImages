PImage FlashG;  //declare variables
float scaleFactor = .1;

void setup() {
  size(1600,800);  //set canvas size
  FlashG = loadImage("Flash.png");    //set FLashG variable to a picture of Flsah Gordon, saved from desktop
  noCursor();
  noStroke();
  
}

void draw() {
  //repeat this 50 times per frame with a for loop
  for (int i = 0; i < 50; i++) {
    int x = int(random(width));
    int y = int(random(height)):
    fill(momo.get(x,y));
    ellipse(x,y, 2, 2);
  background(0);  //make background black
  tint(200,0,0);
  image(FlashG, mouseX, mouseY,FlashG.width*2,FlashG.height*2);  //place image location according to where the mouse is. width and height factors
  }
}

void keyPressed() {
 if(keyCode == UP) {
   sceleFactor +-
}