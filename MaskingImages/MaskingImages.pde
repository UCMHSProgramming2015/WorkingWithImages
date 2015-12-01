PImage mainImage;
PImage mask;
void setup(){
  size(800,600); //size
  mainImage=loadImage("raindrop.jpg");//mainimage which is a raindrop
  mask=loadImage("taj_grayscale.jpg");//mask which is the taj mahal
  mainImage.mask(mask);//use taj mahal to mask raindrops
}
void draw(){
  background(0);//black background
  image(mainImage,100,100);//draw raindrop
}