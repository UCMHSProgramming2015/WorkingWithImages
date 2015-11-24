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
background(255);

  
  tint(255,100);
  
  image(pooh,250,250);   //draw the image

 filter(BLUR,5);  
  filter(POSTERIZE,5);

fill(0);
;
textSize(40);


text("Winnie the Pooh",150,200);



}