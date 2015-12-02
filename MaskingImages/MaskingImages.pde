PImage gokukamehameha;
PImage gohancellkamehameha;

void setup () {
  size(600,600);
  gokukamehameha = loadImage("gokukamehameha.png");
  gohancellkamehameha = loadImage("gohancellkamehameha.gif");
  gohancellkamehameha.mask(gokukamehameha);
  gokukamehameha.mask(gohancellkamehameha);
}

void draw () {
  background (map(mouseY, 0, height, 0, 255));
  image(gokukamehameha, 0, 0);
  image(gohancellkamehameha, 0, 0);
  
}