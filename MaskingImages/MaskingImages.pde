//declare variables
PImage christmas;
PImage lights;

void setup() {
  size(800, 450);
  christmas = loadImage("snow_scene.jpg");
  lights = loadImage("lights.jpg");
  christmas.mask(lights);
}

void draw() {
  background(map(mouseY, 0, height, 0, 255)); 
  image(christmas, 0, 0);
}