PImage img1;
float scl = 1;
PVector loc, vel;
int randomheight, randomwidth, sz;

void setup() {
  size(904,883);
  img1 = loadImage("3.jpg");
  //loc = new PVector(0,0);
  //vel = new PVector(2, 1);
  //draw image from center
  imageMode(CENTER);
  image(img1,width/2,height/2, img1.width*scl, img1.height*scl);
  //no stroke
  noStroke();
  frameRate(300);
}

void draw() {
  //background(img1);
  
  
  //add position
  //loc.add(vel);
  
  //display image
  //image(img1,loc.x,loc.y, img1.width*scl, img1.height*scl);
  
  //add color at given mouse point
  randomwidth = int(random(width));
  randomheight = int(random(height));
  fill(img1.get(randomwidth, randomheight));
  //lower quality when mouse is high)
  sz = int(map(mouseY, 0, height, 1, 50));
  ellipse(randomwidth, randomheight, sz, sz);
}