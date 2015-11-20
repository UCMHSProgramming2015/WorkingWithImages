PImage pic;
float scalefactor = .2;
PVector loc = new PVector (width/2,height/2), vel = PVector.random2D ();

void setup () {
  size(800, 600);
  pic=loadImage("vacation spot.jpg");
}

void draw() {
  background(0);
  image(pic, loc.x, loc.y,pic.width*scalefactor,pic.height*scalefactor);
  loc.add(vel);
  if (loc.x>width) {
    loc.x=0;
  } else if (loc.x<0){
    loc.x = width;
  }
  if(loc.y>height){
    loc.y=0;
  } else if (loc.y<0){
    loc.y= height;
  }
}