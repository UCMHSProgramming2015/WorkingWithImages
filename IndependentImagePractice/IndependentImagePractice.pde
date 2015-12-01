PImage flower, mask, flower2, railroad, trees, water;//initialize all of the required PImages
int state = 0;//which image you are currently viewing
void setup()
{
  size(600, 600);
  flower = loadImage("Flower-600x600.jpg");//load all of the required PImages
  mask = loadImage("qrcode.jpg");
  flower2 = loadImage("creeping-phlox-pink-flowers-600x600.jpg");
  railroad = loadImage("railroad.jpg");
  trees = loadImage("trees.jpg");
  water = loadImage("water.jpg");
  flower.mask(mask);//apply the QR code mask to the first flower image
}
void draw()
{
  if(state==0)
  {
    background(flower2);//display the masked flower over the background flower
    image(flower, 0, 0);
  }
  else if(state==1)
  {
    background(255);
    image(railroad, 0, 200);//show the railroad in the lower part of the screen
    fill(railroad.get(mouseX, mouseY-200));//fill the upper part of the screen with the color at the mouse
    rect(0, 0, 600, 200);
  }
  else if(state==2)
  {
    background(trees);
    blend(water, 0, 0, 600, 600, 0, mouseY, 600, 600, MULTIPLY);//blend the trees with the water from the mouse to the bottom of the canvas
  }
  if(keyPressed)//when a key is pressed, the image on screen is inverted
  {
    filter(INVERT);
  }
}
void mouseClicked()
{
  state++;//move to the next image
  if(state>=3)//go back to the beginning if at the end
  {
    state = 0;
  }
}