//declare variables
PImage christmas;
PImage lights;
PImage santa;


void setup() {
  size(800, 450);   //set size
  // load images by adding files to sketch
  christmas = loadImage("snow_scene.jpg");
  lights = loadImage("lights.jpg");
  santa = loadImage("santa.png");
  //mask lights with christmas
  christmas.mask(lights);

}

void draw() {
  // set background to allow mask
  background(map(mouseY, 0, height, 0, 255)); 
  //create image christmas and santa
  image(christmas, 0, 0);
  //move santa across the scene with mouse
  image(santa, mouseX, mouseY, 100, 50);

  
}