PImage bbh; //Bun Bo Hue
PImage mask; 
float size = 5;

void setup () {
  size (800, 600);

  //load pic to Image
  bbh = loadImage ("bun bo hue.jpg");
mask = loadImage("foodquote.jpg");
mask.filter(INVERT);
  bbh.mask(mask);
  imageMode(CENTER);
}

void draw () {
  background (0);
  //set sz based on mouseY
  size = map(mouseY, 0, height, 1, 20);

  //display
    image(mask,width/2,height/2);
  image(bbh, width/2, height/2);

}