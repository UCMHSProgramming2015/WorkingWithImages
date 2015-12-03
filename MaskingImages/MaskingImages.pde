//PImage main;
//PImage mask;
PImage pug;
PImage heart;


void setup() {
  size(800,800);
 // main = loadImage("water lily.jpg"); //adds image to data
 // image(main,0,0);
 // mask = loadImage("husky.jpg"); //adds image to data
 // image(mask,0,0);
  imageMode(CENTER);
  pug = loadImage("pug.jpg");
  image(pug,width/2,height/2);
 heart = loadImage("heart.jpg");
 image(heart,width/2,height/2);
  
  //main.mask(mask); //puts two images together
  
 pug.mask(heart);
}

void draw() {
  background(0);
  //image(main,0,0); //puts combined image
  
 image(pug,width/2,height/2);

  
}