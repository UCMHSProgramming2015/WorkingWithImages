PImage B1;
PImage B2;
PImage B3;
PImage B4;

float tran= 255;
float tran2= 255;
float tran3= 255;
float fade;
float fade2;
float fade3;// creates image names and other variables
void setup() {
  size(1000, 1000);

  B1= loadImage("B1.jpg");   // loads in the images I want to use
  B2= loadImage("B2.jpg");
  B3= loadImage("B3.jpg");
  B4= loadImage("B4.jpg");
}
void draw() {
  background(B4);//ads the background image
  if (tran>0) {
    fade= fade+.1; //the fade is a changing variable
    tran=tran-fade; //transparency is changd by fade
    tint(255, tran); //makes fading
    image(B1, 0, 0); //adds image to the canvas
  }
   
  
 if (tran<=0) {
    fade2= fade2+.1;
    tran2=tran2-fade2;
     tint(255, tran2);
  image(B2, 0, 0);
  }
  if(tran2<=0){
    fade3=fade3+.1;
    tran3=tran3-fade3;
    tint(255, tran3);
  image(B3, 0, 0);
  }
  }