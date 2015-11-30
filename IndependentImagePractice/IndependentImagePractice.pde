//declare variables
PImage forest;
PImage nightsky;
PImage tiefighter;
PVector loc,vel,acc;
void setup(){
  size(800,600);
  //load images
  forest = loadImage("forest800x600-1.jpg");
  nightsky = loadImage("sky800x600.jpg");
  tiefighter = loadImage("tie-fighter-special-forces-star-wars-the-force-awakens-spacecraft-cut-out-with-transparent-background.png");
  //add filter
  tiefighter.filter(POSTERIZE,4);
  //set PVector variables
  loc = new PVector (width/2, height/2);
  vel = PVector.random2D();
}

void draw(){
  //set up acceleration
  acc = PVector.random2D();
  acc.mult(0.1);
  //set up a blend
  background(nightsky);
  blend(forest,0,0,width,height,0,0,width,height,LIGHTEST);
  //display image at vector location
  image(tiefighter,loc.x, loc.y);
  //set vector parameters
  loc.add(vel);
  vel.add(acc);
  vel.limit(4);
  //if vector goes off screen, appear at the other side
  if (loc.x >= width) {
    loc.x = 0;     
  } else if (loc.x <= 0) {
    loc.x = width;
  }
  if (loc.y >= height) {
    loc.y = 0;
  } else if (loc.y <= 0) {
    loc.y = height;
  }
}