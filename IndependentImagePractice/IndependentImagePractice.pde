//THRESHOLD
//declare PImage
PImage skull;
PImage cage;
float size;

void setup(){
size(800,800);
background(0);
noStroke();

//Initialise PImage
skull = loadImage("skull.jpg");
cage = loadImage("cage.jpg");

//Blend texture into series
skull.blend(cage,0,0,skull.width,skull.height,0,0,cage.width,cage.height,MULTIPLY);  
}


void draw(){
  size = map(mouseX,0,width,1,10); 
 
for(int i = 0; i < 50; i++){
 int x = int(random(width));
 int y = int(random(height));

 fill(skull.get(x,y));
 ellipse(x,y,size,size);
 }
 
  
}