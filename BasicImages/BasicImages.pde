PImage bird;
//PImage friendlinessPellets;
float scale = .1;
void setup(){
 size(800, 600);
 bird = loadImage("bird.jpg"); 
 //friendlinessPellets = loadImage("flowey.jpg");
}

void draw(){
  background(0);
  image(bird, mouseX, mouseY, bird.width * scale, bird.height * scale);
  imageMode(CENTER);
  
  //image(friendlinessPellets, 0, 0);
}