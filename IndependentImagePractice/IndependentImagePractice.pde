//name images
PImage derpy;
PImage background;

void setup(){
  //set canvas size
  size(800,600);
  
  //load images
  derpy = loadImage("Derpy.png");
  background = loadImage("Sunburst.jpg");
  
  //derpy.blend(background,0,0,800,600, 0,0,800,600, HARD_LIGHT);
}

void draw(){
  //display images
  image(background, 0,0, width, height);
  image(derpy,0, 0);

}
  