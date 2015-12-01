//declare variables
PImage heart, rainbow;
PImage catcolored, cat;
float diam;

int count = 100;
float[] wanderers = new float[count];
PVector[] vel = new PVector[count];
PVector[] loc = new PVector[count];
PVector[] acc = new PVector[count];

void setup() {
  size(800, 400);
  //load images
  heart = loadImage("heart.jpg");
  cat= loadImage("cat1.jpg");
  rainbow = loadImage("rainbow.jpg");
  //blend background
  cat.blend(rainbow, 0, 0, 800, 400, 0, 0, 400, 400, EXCLUSION ); 
  cat.blend(rainbow, 0,0,800,400,400,0,400,400, SOFT_LIGHT);
  catcolored = loadImage("cat1.jpg");
  //mask overlay
  catcolored.mask(heart);
  diam = 20;
  //add confetti
  for (int i = 0; i< count; i++) {
    loc[i] = new PVector(mouseX, mouseY);
    vel[i] = PVector.random2D();
  }
}
void draw() {
  //draw background
  image(cat, 0,0);
  //draw movable overlay
  image(catcolored, mouseX-width/2,mouseY-height/2);
  noStroke();
  //confetti when mouse is pressed
  if (mousePressed){
    for (int i = 0; i< count; i++) {
    acc[i] = PVector.random2D();
    vel[i].add(acc[i].mult(.5));
    vel[i].limit(4);
    //draw ball
    fill(random(0,255), random(0,255), random(0,255), 50);
    ellipse(loc[i].x, loc[i].y, diam, diam);

    //add velocitloc.yto position
    loc[i].x+= vel[i].x;
    loc[i].y+= vel[i].y;

    //wrap the ball's position
    if (loc[i].x>= width) {
      loc[i].x= 0;
    } else if (loc[i].x <= 0) {
      loc[i].x= width ;
    }
    if (loc[i].y >= height) {
      loc[i].y= 0;
    } else if (loc[i].y <= 0) {
      loc[i].y= height ;
    }
  }
  }
}