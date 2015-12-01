PImage pic;
void setup()
{
  size(900, 600);
  pic = loadImage("picture.jpg");
}
void draw()
{
  image(pic, 0, 0);
  //filter(THRESHOLD, 0.55);
  //filter(GRAY);
  //filter(INVERT);
  filter(POSTERIZE, 10);
  for(int i = 0; i < 3; i++)
  {
    //filter(DILATE);
    //filter(ERODE);
    filter(BLUR);
  }
}