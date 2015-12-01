//*****************************
//got an image? go to sketch --> add file --> it will create a data folder within the code folder
//****************************

PImage sombrero;
PImage beanie;
PImage strawberry;
Float scale;

//void setup() {
//  //declare the image
//  sombrero=loadImage("hedgehog with a sombrero.jpg");
//  beanie=loadImage("hedgehog with a beanie.jpg");
  
//  size(323,423);

//  //display image from center
//  imageMode(CENTER);
//}

//void draw () {
//  //background(255);
//  scale= random(.1, 1);
//  //last two variables control width and height
//  image(sombrero, random(width), random(height), sombrero.width*scale, sombrero.height*scale);
//  image(beanie, random(width), random(height), beanie.width*scale, beanie.height*scale);
//}

void setup(){
  size(550,413);
  strawberry=loadImage("hedgehog with a strawberry hat.jpg"); 
}

void draw(){
  //set image as background
  background(strawberry);
  
  //have a sort of "color picker" effect
  int x=mouseX;
  int y=mouseY;
  int diam=50;
  
  fill(strawberry.get(x,y));
  noStroke();
  ellipse(mouseX,mouseY,diam,diam);
}