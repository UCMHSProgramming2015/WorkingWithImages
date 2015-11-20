PImage tacos; 
float scaleFactor = .05;

void setup () {
  size(800, 600);   
  tacos = loadImage("tacos.jpg");    //image (exact name)
  noCursor();    //cursor no show
}

void draw () {
  background(0);
  tint (0,115,0);    //tint
  image(tacos, mouseX, mouseY, tacos.width*scaleFactor, tacos.height*scaleFactor);  //image parameters (name,Xpos,Ypos,width,height)
}

void keyPressed () {
  if (keyCode == UP) {    //pic grows w up
    scaleFactor += .1;
  }
  if (keyCode == DOWN) {    //pic shrinks w down
    scaleFactor -= .1;
  }
}