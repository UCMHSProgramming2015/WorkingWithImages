PImage GabeN;
PImage pcmr;
float scale;
float scale2;
void setup() {
  size(800,600);
  GabeN = loadImage("gabe.png");
  pcmr = loadImage("PCMR.png");
}
void draw() {
  scale = random(.2,.9);
  scale2 = random(.05,.1);
  image(GabeN, random(width), random(height), GabeN.width*scale, GabeN.height*scale);
  image(pcmr, random(width), random(height), pcmr.width*scale2, pcmr.height*scale2);
}