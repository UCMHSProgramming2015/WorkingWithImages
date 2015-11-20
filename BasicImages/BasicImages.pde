PImage kobe;
float scaleFactor=0.5;

void setup () {
  size(800, 600);
  kobe=loadImage("Kobe.jpg");
  noCursor();
}

void draw() {
  image(kobe, mouseX, mouseY, kobe.width*scaleFactor, kobe.height*0.5);
  tint(0,255,0);
  image(kobe, mouseX, mouseY, kobe.width*0.5, kobe.height*0.5);
}

void keyPressed() {
  if (keyCode==UP) {
    scaleFactor += 0.1;
  }
  if (keyCode==DOWN) {
    scaleFactor -= 0.1;
  }
}