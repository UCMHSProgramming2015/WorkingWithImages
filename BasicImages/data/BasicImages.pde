PImage chocolate;//declare variable for images
float scaleFactor;//variable for size of image
float x;

void setup(){
  size(602,209);
  chocolate= loadImage("hershey.jpg");//to load image
  scaleFactor= 1;//to change the dimensions of image
  imageMode(CENTER);
}

void draw(){
  background(0);// background set to 0 so flag will not be dragged into multiple images of itself, no trail of flags
  //tint(120,200);
  image(chocolate, width/2, height/2, chocolate.width*scaleFactor, chocolate.height*scaleFactor);// dimensions of picture, resized, and will follow mouse
  filter(INVERT);//inverted image 
}
void keyPressed(){
  if (keyCode==ESC){
    exit();
  }
  if(keyCode==UP){//each time the key UP is pressed, then the picture gets bigger 
    scaleFactor+=.1;
  }
  if(keyCode==DOWN){//everytime the key DOWN is pressed, the picture gets smaller
    scaleFactor-=.1;
  }
}