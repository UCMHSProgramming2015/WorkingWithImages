//name variables
PImage derpy;
PImage background;
PImage eyes;
int w = 20;
int h = 20;

void setup() {
  //set canvas size
  size(800, 600);

  //load images
  derpy = loadImage("newderp.png");
  background = loadImage("Sunburst.jpg");
  eyes = loadImage("neweyes.png");

  //blending
  background.blend(derpy, 0, 0, 800, 600, 0, 0, 800, 600, HARD_LIGHT);
}

void draw() {
  //display images
  image(background, 0, 0);

  //Kanye will swell and shrink
  //if(w >= 200){
  //  w -= 2;
  //} else {
  //  w+= 2;
  //}
  //if(h >= 200){
  //  h -= 2;
  //} else {
  //  h+= 2;
  //}  
  //derpy.resize(w,h); ????????
}