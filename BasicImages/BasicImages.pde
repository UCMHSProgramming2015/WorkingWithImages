//declare PImage
PImage Napoleon2;
float sz =1;

void setup(){
  size(407,509);
  Napoleon2 = loadImage("Napoleon2.jpg");
  imageMode(CENTER);
  background(0);
  noStroke();

}


void draw(){
  sz= map(mouseY,0,height,1,20);
  for(int i=0; i <200; i++){
      int x = int(random(width));
      int y= int(random(height));
  fill(Napoleon2.get(x,y));
  ellipse(x,y,sz,sz);
  //image(okapi,mouseX, mouseY, okapi.width/5,okapi.height/5);
}
}