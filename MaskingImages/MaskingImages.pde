PImage sloth;
PImage moun;
float scale = 0;

void setup(){
  imageMode(CENTER);
  size(600,600);
  sloth = loadImage("asloth.jpg");
  moun = loadImage("moun.gif");
  sloth.mask(moun);
}

void draw(){
    background(map(mouseY, 0, height, 0, 255));
  
  //display the mapped image
  image(sloth, mouseX, mouseY);
}