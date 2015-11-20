//delcare image
PImage christmas; 
//create floats and pvecotrs
float scaleFactor=.2;
PVector loc, vel;
void setup() {
  size(800, 600);
  //initialize PImage
  christmas = loadImage("snow_scene.jpg");
  //initialize loc and vel
  loc = new PVector(width/2, height/2);
  vel= PVector.random2D();
}

void draw() {
  background(0);
  //create image using scale factor as well so it is proportionate
  image(christmas, loc.x, loc.y, christmas.width*scaleFactor, christmas.height*scaleFactor);
  //bounce image around
  loc.add(vel);
  if (loc.x > width) {
    loc.x = 0;
  }else if(loc.x<0){
    loc.x=width;
  }
  if(loc.y > height){
    loc.y = 0;
  }else if(loc.y<0){
    loc.y=height;
  }
}