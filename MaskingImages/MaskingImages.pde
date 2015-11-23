PImage Willy;
PImage Wonka;
void setup(){
  size(400,400);
  Willy = loadImage("Tell me more.jpeg");
  Wonka = loadImage("Mask.jpg");
    Willy.mask(Wonka);
}
void draw(){
  image(Willy,0,0);
}