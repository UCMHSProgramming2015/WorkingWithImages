//initialize images
PImage m, d;
//initialize vectors
PVector loc, vel, acc;
//initialize x
int x=0;
void setup() {
  //canvas size
  size(600, 600);
  //load images
  m=loadImage("monet lillies.jpg");
  d=loadImage("d1.png");
  //declare vectors 
  loc= new PVector(width/2, height/2);
  vel = new PVector(random(-1, 1), random(-1, 1));
}

void draw() {
  //draw image
  image(m, 0, 0);
  image(d, loc.x, loc.y);

  //declare acc vector
  acc= PVector.random2D();
  acc.mult(.1);
  
  //make dragonfly move randomly
  loc.add(vel);
  vel.add(acc);
  vel.limit(1);

  //wrap dragonfly's position
  if (loc.x >= width) {
    loc.x = 0;
    //increase blur (of dragonfly and waterlilles)if dragonfly goes off screen and comes back
    x=x+1; 
  } else if (loc.x + 150 <= 0) {
    loc.x = width;
    x=x+1;
  }
  if (loc.y >= height) {
    loc.y = 0;
    x=x+1;
  } else if (loc.y + 150 <= 0) {
    loc.y = height;
    x=x+1;
  }
  //blur images
  filter(BLUR, x);
}