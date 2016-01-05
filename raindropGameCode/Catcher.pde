class Catcher {
  PVector loc;
  PImage img;
  int diam = 100;
int tnt =255;

  Catcher() {
    loc = new PVector();
    loc.set(mouseX, mouseY);
    img = loadImage("plane.png");
  }

  void display() {
    fill(0, 50, 200);
    tint(0, 153, 204, tnt); 
    //ellipse(mouseX, mouseY, diam, diam);
    image(img, mouseX - 50 , mouseY - 50, diam, diam);
  }
}