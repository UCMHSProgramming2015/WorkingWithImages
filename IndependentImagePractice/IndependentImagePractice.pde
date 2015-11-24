

//declare PImage
PImage skull;
PImage tree;

void setup(){
size(800,800);

//Initialise PImage
skull = loadImage("skull.jpg");
tree = loadImage("tree.jpg");

//Blend texture into skull
skull.blend(tree,0,0,skull.width,skull.height,0,0,tree.width,tree.height,HARD_LIGHT);  
}


void draw(){
  //draw the blended image
  image(skull,0,0);
  
  
}