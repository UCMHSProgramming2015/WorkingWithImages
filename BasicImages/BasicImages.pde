//declare variables
float diam;
PImage red, black;
int count = 4;
float[] wanderers = new float[count];
PVector[] vel = new PVector[count];
PVector[] loc = new PVector[count];
PVector[] acc = new PVector[count];
void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  red = loadImage("angry-bird-icon.png");
  black = loadImage("angry-bird-black-icon.png");
  diam = 30;
  for (int i = 0; i< count; i++) {
    loc[i] = new PVector(400, 300);
    vel[i] = PVector.random2D();
  }
}

void draw() {
  //draw background to cover previous frame
  background(255);
  noStroke();
  for (int i = 0; i< count; i++) {
    acc[i] = PVector.random2D();
    vel[i].add(acc[i]);
    vel[i].limit(15);
    //draw ball
    if (i%2==0) {
      image(black, loc[i].x-30, loc[i].y-30, 60, 60);
     
    } else {
      image(red, loc[i].x-30, loc[i].y-30, 60, 60);
    }
    //add velocitloc.yto position
    loc[i].x+= vel[i].x;
    loc[i].y+= vel[i].y;
  for(int j = 0; j<count; j++){
    if (dist(loc[i].x,loc[i].y,loc[j].x,loc[j].y)<60&&!(i==j)){
      vel[i].mult(-1);
      vel[j].mult(-1);
    }
  }
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