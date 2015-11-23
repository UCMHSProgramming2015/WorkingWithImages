PImage landscape;
PImage mask;
void setup()
{
  landscape = loadImage("landscape2.jpg");
  mask = loadImage("landscape.jpg");
  size(900, 600);
  landscape.mask(mask);
}
void draw()
{
  background(0);
  image(landscape, 0, 0);
}