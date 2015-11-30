//delcare variables
PImage cats;
PImage gal;
float sz;
void setup() {
  size(849,855); //set canvas size
  
  //initialize variables
  cats = loadImage("cats.png");
  gal = loadImage("gal.jpg");
  sz = 30;
  gal.blend(cats,0,0,gal.width,gal.height,0,0,cats.width,cats.height,DARKEST); //blend cats.jpg and gal.jpg
 
  background(0); //set background color to black
  stroke(0); //set stroke color to black

}
void draw() {
  image(gal,0,0); //display gal.jpg
  filter(POSTERIZE, 4);  //set filter to POSTERIZE
  for (int i = 0; i < 30; i++) {  //set i equal to 0.  when i is less than 30, i increases
    int x = int(mouseX);  //x is equal mouseX
    int y = int(mouseY);  //y is equal to mouseY
    fill(gal.get(x,y));  //get the color of the point that the mouse is at
    ellipse(x,y,sz,sz);  //draw an ellipse to show the color
  }
}