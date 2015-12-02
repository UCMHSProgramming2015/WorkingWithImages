//declare image variables

PImage gsw;
PImage light;

void setup () {
  size(800, 800);  //set canvas
<<<<<<< HEAD
  gsw = loadImage("gsw.jpg");
  light = loadImage("2lightning.jpg");
  gsw.blend(light, 0, 0, 800, 800, 0, 0, 800, 800, SUBTRACT);  //blend the two images together
=======
  gsw = loadImage("gsw.jpg");  //load the Warriors logo 
  light = loadImage("2lightning.jpg");  //load the lightning image
  gsw.blend(light, 0, 0, 800, 800, 0, 0, 800, 800, SUBTRACT);  //blend the two pics together
>>>>>>> refs/remotes/origin/IndependentImagePractice
}



void draw () {
  image(gsw, 0, 0);
<<<<<<< HEAD
  tint(50, 235, 255);
  if (mousePressed) {
=======
  tint(50, 235, 255);  //give the masked images a blue tint
  if (mousePressed) {  //while mouse is pressed, randomly change tint
>>>>>>> refs/remotes/origin/IndependentImagePractice
    tint(random(255), random(255), random(255));
  }
}