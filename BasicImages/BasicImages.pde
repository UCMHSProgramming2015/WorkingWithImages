PImage GabeN;
float scale;
void setup() {
  size(800,600);
  GabeN = loadImage("gabe.png");
}
void draw() {
  scale = random(.2,.9);
  image(GabeN, random(width), random(height), GabeN.width*scale, GabeN.height*scale);
}