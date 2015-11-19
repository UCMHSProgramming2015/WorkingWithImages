
//declare PImage
PImage elephant;
float scale = 0.001;



void setup(){
  size(800,600);
 elephant = loadImage("baby elephant.jpg");   //load picture into PImage

 
 imageMode(CENTER);  //draw image from centre
}




void draw(){
 scale = random (0.01, 8);
  background(0);
 image(elephant,random(width),random(height),elephant.width*scale,elephant.height*scale);   //display image
}