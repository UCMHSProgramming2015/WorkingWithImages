//declare PImage
PImage Napoleon2;
PImage Pedro;
PImage NPBanner2;
float sz =1.5;

void setup(){
  size(407,509);
  Napoleon2 = loadImage("Napoleon2.jpg");
  Pedro= loadImage("Pedro.jpg");
  NPBanner2 = loadImage("NPBanner2.png"); 
  imageMode(CENTER);
  background(Napoleon2);
  noStroke();
  filter(POSTERIZE,2);
  frameRate(15);

}


void draw(){
  
 
  image(NPBanner2, width/2,140, 390,390);
  for(int i=0; i <500; i++){
      int x = int(random(width));
      int y= int(random(height));
  fill(Pedro.get(x,y));
  ellipse(x,y,sz,sz);
 
}
}