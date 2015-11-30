//THRESHOLD
//declare PImage
PImage skull;
PImage cage;
float size;
float f;
PImage red;
PImage rose;

void setup(){
size(800,800);
background(255);
noStroke();
frameRate(1000);


//Initialise PImage
skull = loadImage("skull.jpg");
cage = loadImage("cage.jpg");
rose = loadImage("rose.jpg");
red = loadImage("red.jpg");

//Blend texture into series
skull.blend(cage,0,0,skull.width,skull.height,0,0,cage.width,cage.height,MULTIPLY);  
cage.blend(skull,0,0,cage.width,cage.height,0,0,skull.width,skull.height,MULTIPLY); 

rose.blend(red,0,0,rose.width,rose.height,0,0,red.width,red.height,ADD);
red.blend(rose,0,0,red.width,red.height,0,0,rose.width,rose.height,ADD);
}


void draw(){
  size = map(mouseX,0,width,0.2,20); 
if(mouseX>width/2){ 
for(int i = 0; i < 50; i++){
 int x = int(random(width));
 int y = int(random(height));

 fill(skull.get(x,y));
 ellipse(x,y,size,size);
 }
}
else{
 for(int i = 0; i<50; i++){
  int x = int(random(width));
  int y = int(random(height));
  fill(rose.get(x,y));
  ellipse(x,y,size,size);
 }
}

  
}