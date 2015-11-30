float x, y, velX, velY;
PImage phil1;
PImage phil2;
PImage phil3;
PImage phil4;

PVector loc;
PVector vel = new PVector(2, 2);

void setup() {
  //set size of canvas
  size(1000, 1000);

  //initialize variables
  x = random(width);
  y = random(height);
  loc = new PVector(width/2, height/2);
  velX = random(-20, 20);
  velY = random(-20, 20);
  vel = new PVector(random(-5, 5), random(-5, 5));
  phil1 = loadImage("Phil 1.jpg");
  phil2 = loadImage("Phil 2.jpg");
  phil3 = loadImage("Phil 3.jpg");
  phil4 = loadImage("Phil 4.jpg");
}

void draw() {
  background(0);
  scale(1);
  image(phil3,x + 200,y +100);
  image(phil4,x -600,y +300);
  scale(.4);
  image(phil1,x+700,y+500);
  image(phil2,x-950,y+100);
  filter(POSTERIZE, 3);

  x += velX;
  y += velY;
  loc.x += vel.x;
  loc.y += vel.y;


  if (x >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  if (loc.x >= width) {
    vel.x = -abs(vel.x);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (loc.x <= 0) {
    vel.x = abs(vel.x);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y >= height) {
    velY = -abs(velY);
  } else if (y <= 0) {
    velY = abs(velY);
  if (loc.y >= height) {
    vel.y = -abs(vel.y);
  } else if (loc.y <= 0) {
    vel.y = abs(vel.y);
  }
}
  }
  }