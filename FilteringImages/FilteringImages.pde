//declare variables
PImage pusheen;
float scaleFactor = 1;

void setup(){
size(500,500);  //set size of screen


//initialize variables
pusheen=loadImage("pusheen.jpg");
}

void draw(){

image(pusheen,width/2,height/2,pusheen.width*scaleFactor,pusheen.height*scaleFactor);  //display image
filter(THRESHOLD);

}