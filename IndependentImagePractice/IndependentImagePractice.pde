PImage B1;
PImage B2;
float transparency= 255;
float fade;     // creates image names and other variables
void setup(){
 size(1000,1000);
 
B1= loadImage("Beatles1.jpg");   // loads in the images I want to use
B2= loadImage("Beatles2.jpg");

}
void draw(){
 background(B2);//ads the background image
 fade= fade+.1; //the fade is a changing variable
 transparency=transparency-fade; //transparency is changd by fade
if(transparency<0|| transparency>255){fade= -fade;} //it will fade in and out when opacity is full or none

tint(255,transparency); //makes fading
image(B1,0,0); //adds image to the canvas



  
}