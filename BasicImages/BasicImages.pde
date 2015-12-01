
  //declare PImage
PImage baby;
float scale = .1;
float sz = 3;

void setup() {
  size(800, 600);

  //load picture into PImage
baby = loadImage("baby.jpg");

  //draw image from center
  imageMode(CENTER);

  background(0);
  noStroke();
}

void draw() {
  //set sz based on mouseY
  sz = map(mouseY, 0, height, 1, 20);

  for (int i = 0; i < 200; i++) {
    //pick random integers for x and y
    int x = int(random(width));
    int y = int(random(height));


    fill(baby.get(x, y));

    //draw an ellipse
    ellipse(x, y, sz, sz);
   }
}