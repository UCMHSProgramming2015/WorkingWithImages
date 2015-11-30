PImage wolf, sir;
int present = 500;

void setup()
{
  size(1000, 500);
  wolf = loadImage("sif.jpg");
  wolf.resize(wolf.width/2, wolf.height/2);
  sir = loadImage("artoris1.jpg");
  background(0);
  frameRate(1000);
  sir.mask(sir);
}

void draw()
{
  image(sir,mouseX,mouseY,sir.width/2,sir.height/2);
  for(int i = 0; i < present; i++)
  {
  int x = int(random(width));
  int y = int(random(height));
    fill(wolf.get(x, y));
  noStroke();
  ellipse(x, y, 2, 2);
  }
}