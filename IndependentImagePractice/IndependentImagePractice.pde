//declare PImages
PImage dolphin;
PImage pink;
PImage maze;
PImage galaxy;

void setup() {

  size(500, 500);
  //initialize PImages
  dolphin = loadImage("Untitled-2.png");
  pink= loadImage("grung.png");

  maze = loadImage("maze.png");
  galaxy= loadImage("galaxy.jpg"); 

  //use blend
  maze.blend(galaxy, 0, 0, maze.width, maze.height, 0, 0, galaxy.width, galaxy.height, ADD);


//use mask
pink.mask(dolphin);
}


void draw() {
  background(0);
  //draw image
  image(maze, 0, 0);
  image(pink, mouseX, mouseY);
  
}