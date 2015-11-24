//name images
PImage angry;
PImage cocky;
PImage derpy;
PImage disgusted;
PImage done;
PImage fake;
PImage frazzled;
PImage hungry;
PImage insecure;
PImage jubilant;
PImage squinty;

void setup(){
  //set canvas size
  size(600,600);

  //load images
  angry = loadImage("angry.png");
  cocky = loadImage("cockysmile.jpg");
  derpy = loadImage("derpy.png");
  disgusted = loadImage("disgusted.png");
  done = loadImage("done.png");
  fake = loadImage("fakesmile.png");
  frazzled = loadImage("frazzled.png");
  hungry = loadImage("hungry.png");
  insecure = loadImage("insecure.jpg");
  jubilant = loadImage("jubilant.png");
  squinty = loadImage("squinty.png");
}

void draw(){
  //make background rainbow
  noStroke();
  colorMode(HSB, 600);
  for (int i = 0; i < 600; i++) {
    for (int j = 0; j < 600; j++) {
      stroke(i, j, 600);
      point(i, j);
    }
  }
   
  //display images
  image(disgusted,0,-20);
  image(jubilant,35,415);
  image(derpy,width/3,10);
  image(done,300,220);
  image(frazzled,width/3,height/2);
  image(angry, 2*width/3, 0);
  image(fake, 20,height/3);
  image(hungry, 2*width/3, 330);
  
  image(squinty, mouseX, mouseY);
}