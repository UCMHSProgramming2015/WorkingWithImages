PImage xlb; //Xiao Long Bao

void setup () {
  size (800,600);
  
  //load pic to Image
  xlb = loadImage ("xiao long bao zi.jpg");
  
}

void draw () {
  background (255);
  //display
  image(xlb,mouseX+192,mouseY+150);
}