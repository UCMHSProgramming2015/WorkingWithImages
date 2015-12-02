PImage Stormrage;  //declare variables
PImage Fire;

void setup() {
  size(800, 600);  //set canvas size
  Stormrage = loadImage("Stormrage.jpg");    //set FLashG variable to a picture of Flsah Gordon, saved from desktop
  Fire = loadImage("Fire.jpg");
  Stormrage.mask(Fire);  //Masking stormrage into fire
  Fire.mask(Stormrage);  //Masking fire into stormrage
}

void draw() {
  background(map(mouseY, 0, height, 0, 250));  //set background
   image(Stormrage, 0, 0);  //Insert Stormrage Image
  image(Fire, 0, 0);  //Insert Fire Image
}

void keyPressed() {
  tint(random(255),random(255),random(255));  //when key pressed, picture changes tint color randomly
}