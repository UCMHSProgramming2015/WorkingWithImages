PImage pooh;   //declare variables
float scaleFactor=.5;
PVector loc = new PVector();
PVector vel = new PVector();


void setup(){
 size(500,500);
  
  pooh = loadImage("download.jpg");  //load the image 
  imageMode(CORNERS);
  noCursor();
loc = new PVector(width/2,height/2);   //set values for vel and loc 
vel = new PVector(1,1);


}



void draw(){
background(0);
  tint(255,100);
  
  image(pooh,loc.x,loc.y, pooh.width*scaleFactor ,pooh.height *scaleFactor);   //draw the image
 loc.add(vel);       //move the image
if (loc.x  >= width) {        ///set parameters for moving the image
      loc.x = 0;
    } else if (loc.x  <= 0) {
      loc.x = width;
    }
    if (loc.y  >= height) {
      loc.y =0;
    } else if (loc.y  <= 0) {
      loc.y = height ;
    }
  }