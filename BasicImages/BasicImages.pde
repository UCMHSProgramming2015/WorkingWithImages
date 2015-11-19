PImage niall;
float scaleFactor;
//declare variables
void setup () { 
  niall = loadImage("niallhoranwithglassesagain.jpg");
  size(800,600);
  background(0);
}
void draw () {
    background(0);
  scaleFactor = .16; //to shrink the picture
  image(niall, width/2 - 180, height/2 - 230, niall.width * scaleFactor, niall.height * scaleFactor);
  filter(INVERT);
  
}