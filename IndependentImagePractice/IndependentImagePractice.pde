PImage space;
PImage em1;
PImage em2;
PImage em3;
PImage em4;
PImage em5;
float EM; //declare variables

void setup () {
  size(800,600); //set size
  imageMode(CENTER); //have the picture appear with respect to its center
  space = loadImage("dr spaceman.jpg"); //load background
  em1 = loadImage("em1.jpg");
  em2 = loadImage("em2.jpg");
  em3 = loadImage("em3.jpg");
  em4 = loadImage("em4.jpg");
  em5 = loadImage("em5.jpg"); //load all faces
  image(space,width/2,height/2); //place space background
  space.resize(800,600); //resize all of space
  frameRate(500); //increase framerate 
}

void draw () {
  EM = round(random(5)); //define a variable as a random # between 1 and 5
  //FI = round(random(5)); //define a variable as a random # between 1 and 5
  em1.resize(25,25);
  em2.resize(25,25);
  em3.resize(25,25);
  em4.resize(25,25);
  em5.resize(25,25); //resize all faces
  
  if (mousePressed == true); {
    if (EM == 1) {
      image(em1,mouseX,mouseY);
    }
    if (EM == 2) {
      image(em2,mouseX,mouseY);
    }
    if (EM == 3) {
      image(em3,mouseX,mouseY);
    }
    if (EM == 4) {
      image(em4,mouseX,mouseY);
    }
    if (EM == 5) {
      image(em5,mouseX,mouseY);
    }
  } //draw a random smiley face at your mouse cursor every frame

  filter(BLUR,1); //aply blur filter to program
}