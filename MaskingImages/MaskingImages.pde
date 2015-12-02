PImage SSJgodGOKU;
PImage SSJgodVEGETA;

void setup () {
  size(600,600);
  SSJgodGOKU = loadImage("SSJgodGOKU.jpg");
  SSJgodVEGETA = loadImage("SSJgodVEGETA.jpg");
  SSJgodGOKU.mask(SSJgodVEGETA);
}

void draw () {
  background (map(mouseY, 0, height, 0, 255));
  image(SSJgodGOKU, 0, 0);
  image(SSJgodVEGETA, 0, 0);
  
}