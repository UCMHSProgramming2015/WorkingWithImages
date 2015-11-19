PImage littleeinsteins;
void setup(){
  size(800,600);
  
  littleeinsteins = loadImage("littleeinsteins.jpg");
  


}

void draw(){
  image(littleeinsteins,random(width),random(height),littleeinsteins.width*random(.5,1),littleeinsteins.height*random(.5,1));
  tint(random(255),random(255),random(255));
  
}