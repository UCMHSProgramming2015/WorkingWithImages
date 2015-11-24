PImage treeimg;
PImage chessimg;

void setup() {
  size(800, 600);
  
  //initialize PImages
  treeimg = loadImage("tree.jpg");
  chessimg = loadImage("chess.jpg");
  
  //blend chessimg into treeimg
  treeimg.blend(chessimg, 0, 0, chessimg.width, chessimg.height, 0, 0, treeimg.width, treeimg.height, SUBTRACT);
}

void draw() {
  //draw the blended image
  image(treeimg, 0, 0);
}