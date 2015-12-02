//declare variables
PImage pusheen;
PImage pusheen2;
PImage pusheen3;
PImage pusheen4;
PImage pusheen5;
PImage bat;
 
void setup(){

size(500,500);  //set size of screen

//initialize variables
pusheen=loadImage("pusheen.png");
pusheen2=loadImage("pusheenat.jpg");
pusheen3=loadImage("pusheenbread.jpg");
pusheen4=loadImage("pusheengames.jpg");
pusheen5=loadImage("pusheenpizza.jpg");
bat=loadImage("batsignal.jpg");

pusheen.mask(bat);  //mask the pusheen image

}

void draw(){

background(map(mouseY,0,height,0,255));  //draw a background

//display images
image(pusheen2,0,0,250,250);
image(pusheen3,0,250,250,250);
image(pusheen4,250,0,250,250);
image(pusheen5,250,250,250,250);

if(mousePressed){  //if the mouse is pressed...
  image(pusheen,0,0,500,500);  //...a new image will be displayed
}
} 