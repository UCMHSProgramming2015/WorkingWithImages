//initialize variables

PImage undertale3;
PImage maskPudding;
PImage heart;
float sz = 18;

void setup(){
  size(800, 600);
  undertale3 = loadImage("undertale3.png");
  maskPudding = loadImage("pudding2.jpg");
  heart = loadImage("heart.jpg");
  
  textSize(20);
  
}

void draw(){
  background(0);
  image(maskPudding, random(width/2, width/2 + 5), random(height/2, height/2 + 5));  //pudding intensifies
  image(heart, mouseX, mouseY, sz, sz);  //draws out the SOUL/heart of the code
  imageMode(CENTER);  //image set to center 
  text("*It seems to liek pudding.", width/2-218, 435);
  
  maskPudding.mask(undertale3);  //masking pudding with undertale battle screen 
}