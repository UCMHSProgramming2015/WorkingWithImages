PImage kobe; 
PImage steph;
//declaring images

void setup () {
  size(800, 600);
  kobe=loadImage("Kobe.jpg");
  steph=loadImage("steph.jpg");
  kobe.mask(steph); 
  steph.mask(kobe);
  tint(255,215,28);
  //declaring images and masks
}

void draw() {
  background(map(mouseY, 0, height, 0, 255)); //mask order changes when mouseY changes
  image(kobe, 0, 0); //load image on canvas
  image(steph, 0, 0); //load image

}

void keyPressed() { //when key is pressed
 tint(random(255),random(255),random(255)); //random tint when key is pressed 
}