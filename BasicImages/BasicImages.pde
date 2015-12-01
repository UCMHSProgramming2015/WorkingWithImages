PImage wilk,marsh;

void setup () {
  size (800,600);
  wilk= loadImage("wilkerson2-psd-web.jpg");
  marsh= loadImage("manish6s-5-web.jpg");
}

void draw() {
  background(0);
  image (wilk, mouseX,mouseY,200,200);
}