PImage test;
float scalefactor = 2;
void setup(){
  test = loadImage("bpmc.jpg");
  size(1000,1000);
  background(0);
}

void draw(){
  image(test,mouseX,mouseY,test.width*scalefactor, test.height*scalefactor);
}