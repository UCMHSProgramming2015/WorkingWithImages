PImage glass;
PImage [] sharpening;
int frame = 0;

void setup() {
  background(0);
  size(432,432);
  sharpening = new PImage[58];
  glass = loadImage("Window.jpg");
  for (int i = 0; i < 58; i++) {
    String filename = "tmp-" + i + ".gif";
    sharpening[i] = loadImage(filename);
  }
}

void draw() {
  image(glass,0,0);
  blend(sharpening[frame%58], 0, 0, sharpening[frame%58].width, sharpening[frame%58].width, 0, 0, sharpening[frame%58].width, sharpening[frame%58].width, LIGHTEST);
  frame++;
}