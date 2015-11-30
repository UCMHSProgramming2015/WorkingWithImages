PImage dolphin;

void setup () {
  size(800,600);
  dolphin= loadImage("Dolphin.jpg");
}
void draw() {

  image (dolphin, 0, 0, width, height);
   filter(POSTERIZE,5);
}