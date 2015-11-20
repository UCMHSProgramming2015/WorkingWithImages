PImage tacos; 
float scaleFactor = .05;
int sz = 5;


void setup () {
  size(800, 600);   
  tacos = loadImage("tacos.jpg");    //image (exact name)
  noCursor();    //cursor no show
  noStroke();
}

void draw () {
  //repeat 50 time w for loop 
  for (i=0; i <50; i++) {
    int x = int(random(width));
    int y = int(random(height));
    fill(tacos.get(mouseX, mouseY));
    ellipse(mouseX, mouseY, 20, 20);
  }
  background(0);
  tint (0, 115, 0);    //tint
  image(tacos, mouseX, mouseY, tacos.width*scaleFactor, tacos.height*scaleFactor);  //image parameters (name,Xpos,Ypos,width,height)
}

void keyPressed () {
  if (keyCode == UP) {    //pic grows w up
    scaleFactor += .1;
  }
  if (keyCode == DOWN) {    //pic shrinks w down
    scaleFactor -= .1;
  }
}