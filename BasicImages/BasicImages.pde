//declare PImage
PImage bernie;
float scale = .1;
float sz = 3;

void setup(){
  size(800, 600);
  
  //load picture into PImage
  bernie = loadImage("Bernie.jpg");
  
  //draw image from center
  imageMode(CENTER);
  
  background(0);
  noStroke();
}

void draw(){
 //set sz based on mouseY
 sz = map(mouseY, 0, height, 1, 20);
 
 //repeat so more circles are drawn per frame
  for (int i = 0; i < 30; i++){
    //pick random integers for x and y
    int x = int(random(width));
    int y = int(random(height));
    
    //set fill to the color of the "bernie" image at x,y
    fill(bernie.get(x, y));
    
    //draw an ellipse
    ellipse(x, y, sz, sz);
  }
}