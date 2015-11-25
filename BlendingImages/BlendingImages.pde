PImage landscape;
PImage landscape2;
void setup()
{
  size(900, 600);
  landscape = loadImage("landscape.jpg");
  landscape2 = loadImage("landscape2.jpg");
  background(landscape);
  blend(landscape2, 0, 0, 900, 600, 0, 0, 900, 600, HARD_LIGHT);
}