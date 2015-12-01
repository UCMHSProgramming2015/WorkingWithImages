PImage niall;
float scaleFactor;
//declare variables
void setup () { 
  niall = loadImage("niallhoranwithglassesandthatsuitattheamas.jpg");
  size(800,600);
  background(0);
}
void draw () {
    background(0);
  scaleFactor = .355; //to shrink the picture
  image(niall, width/2 - 190, height/2 - 290, niall.width * scaleFactor, niall.height * scaleFactor);
  filter(GRAY);
  
}