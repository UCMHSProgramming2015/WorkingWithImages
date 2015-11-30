PImage skoll;

void setup()
{
  size(1000,850);
  skoll = loadImage("wolf.jpg");
  frameRate(500);
}

void draw()
{
  int x = int(random(width));
  int y = int(random(height));
  fill(skoll.get(x,y));
  noStroke();
  ellipse(x,y,2,2);
}