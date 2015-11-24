PImage Willy;
PImage Wonka;
void setup(){
  size(400,400);
  Willy = loadImage("Tell me more.jpeg");
  Wonka = loadImage("Mask.jpg");
    Willy.mask(Wonka);
}
void draw(){
  background(random(255),random(255),random(255));
  image(Willy,0,0);
}