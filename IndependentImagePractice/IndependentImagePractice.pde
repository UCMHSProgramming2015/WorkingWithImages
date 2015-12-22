PImage sea, fish, shark;

void setup(){
  size(800,600);
  imageMode(CENTER);
  sea=loadImage("sea.png");
  fish=loadImage("fish.jpg");
  sea.mask(fish);
    fish.blend(sea, width/2, height/2, fish.width, fish.height, 0, 0, sea.width, sea.height,DARKEST);
shark=loadImage("shark.png");
  
}

void draw(){
  background(sea); 
 // image(sea,width/2,height/2);
 
 image(shark,mouseX,mouseY);
 
 
}