//declare image variables

PImage gsw;
PImage light;

void setup () {
  size(800, 800);  //set canvas
  gsw = loadImage("gsw.jpg");  //load the Warriors logo 
  light = loadImage("2lightning.jpg");  //load the lightning image
  gsw.blend(light, 0, 0, 800, 800, 0, 0, 800, 800, SUBTRACT);  //blend the two pics together
}



void draw () {
  image(gsw, 0, 0);
  tint(50, 235, 255);  //give the masked images a blue tint
  if (mousePressed) {  //while mouse is pressed, randomly change tint
    tint(random(255), random(255), random(255));
  }
}