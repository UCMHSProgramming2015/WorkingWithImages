void setup () {
  size(500, 500);
  PImage [] fire;
  int imageCount = 10;
  int frame = 0;
  fire = new PImage[imageCount];
  for (int i = 0; i < imageCount; i++) {
    String filename = "tmp-" + i + ".gif";
    fire[i] = loadImage(filename);
  }
}

void draw() {
  background(fire[frame]);
}