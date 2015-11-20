PImage pooh;
float scaleFactor=2;
PVector loc = new PVector();



void setup(){
 size(500,500);
  
  pooh = loadImage("download.jpg");
  imageMode(CENTER);
  noCursor();
loc = new PVector(width/2,height/2);



}



void draw(){
image(pooh,loc.x,loc.y, pooh.width*scaleFactor ,pooh.height *scaleFactor);
 




}