PImage sd, heart;

void setup() {
  size(476, 286);
  sd=loadImage("snoopdogg.jpg");
  imageMode(CENTER);
  heart=loadImage("heart.jpg");
  sd.mask(heart);
}

void draw() {
  background(255, 0, 0);
  image(sd, width/2, height/2);
}