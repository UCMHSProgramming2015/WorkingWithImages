PImage cobra;
PImage fire;



void setup() {
  size(1000,600);
  cobra=loadImage("cobra.jpg");
  image(cobra,0,0,200,200);
  fire=loadImage("fire.jpg");

  

  
}

void draw() {
  background(0);
 
  image(cobra,mouseX, mouseY);
  filter(THRESHOLD,.3);
  ellipse(width/2,height/2,50,50);
  blend(fire,0,0,800,600,0,0,800,600,DARKEST);

  
  

    
  
  
  
 
  
  
 

}