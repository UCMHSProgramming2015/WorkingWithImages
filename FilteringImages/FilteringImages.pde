PImage trees2; 
int scalefactor = 2;

void setup() {
  size(800,800);
  
 trees2 =loadImage("trees2.jpg"); 
}

void draw() {
  //background(0);
 
 
 tint(random(255), random(255), random(255)); 
 tint(115, 10);
  image(trees2, random(width), random(height), trees2.width/4, trees2.height/4);
}