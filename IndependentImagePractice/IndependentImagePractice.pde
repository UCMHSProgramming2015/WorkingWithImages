PImage yosemite;
PImage binoc; 
PImage binoc2;
PImage yosemitezoom1;
PImage yosemitezoom2;
PImage cloud;

void setup(){
  size(1000,500);
  yosemite = loadImage("yosemite.jpg");
  binoc = loadImage("binoc.png"); 
  binoc2 = loadImage("binoc2.png");
  yosemitezoom1 = loadImage("yosemitezoom1.jpeg"); 
  yosemitezoom2 = loadImage("yosemitezoom2.jpeg"); 
  cloud = loadImage("cloud.jpeg");
}


void draw(){
  background(yosemite);
  filter(GRAY);
    blend(cloud, 0, 0, 1000,500, 0,0,1000,500, MULTIPLY);
    
  
  imageMode(CENTER);
  if(mouseX >= 444.5 && mouseX <= 555.5){
    image(binoc,mouseX,250);
   }
  if(mouseX <= 444.5){
    image(binoc, 444.5,250);
  }
  if(mouseX >= 555.5){
    image(binoc, 555.5,250);
  }
}

void mousePressed(){
  if(mouseX > 500){
    yosemite = yosemitezoom2;

}

  if(mouseX < 500){
   yosemite = yosemitezoom1;
  }
}
