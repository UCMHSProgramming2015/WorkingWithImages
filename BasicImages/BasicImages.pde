
//declare PImage
PImage series;
float scale = 5;
float sz;


void setup(){
  size(488,469);
 series = loadImage("series.jpg");   //load picture into PImage
 imageMode(CENTER);  //draw image from centre
 background(0);
 noStroke();
}




void draw(){
sz = map(mouseY,0,height,1,5);   //set sz based on mouseY
//repeat so more circles are drawn per frame
for(int i=0; i<30; i++){
  //pick random integers for x and y
int x = int(random(width));
int y = int(random(height));
//set fill to the colour of the "elephant" image at x,y
fill(series.get(x,y));
ellipse(x,y,sz,sz);
}
}