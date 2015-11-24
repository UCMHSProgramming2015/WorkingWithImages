PImage [] fire;
PImage hole;
int imageCount = 10;
int frame = 0;

void setup () {
  size(960, 754);
  hole = loadImage("Hole.jpg");
  fire = new PImage[imageCount];
  for (int i = 0; i < imageCount; i++) {
    String filename = "tmp-" + i + ".gif";
    fire[i] = loadImage(filename);
    fire[i].mask(hole);
  }
}

void draw() {
  background(0);
  image(fire[frame % imageCount],0,0);
  frame += 1;
}