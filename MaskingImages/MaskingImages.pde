//declare variables
PImage christmas;
PImage lights;
PImage santa;



void setup() {
  size(800, 450);   //set size
  // load images by adding files to sketch
  christmas = loadImage("snow_scene.jpg");
  lights = loadImage("lights.jpg");
  //mask lights with christmas
  christmas.mask(lights);
  santa = loadImage("santa.png");
}

void draw() {
  // set background to allow mask
  background(map(mouseY, 0, height, 0, 255)); 
  //create image
  image(christmas, 0, 0);
  image(santa, 500, 100, 100, 50);
}