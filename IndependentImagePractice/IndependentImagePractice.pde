PImage background;
PImage spacecore;
PImage what;
void setup(){
  size(1680,1050);
  background = loadImage("Space.jpg");
  spacecore = loadImage("SpaceCore.png");
  what = loadImage("What.jpg");
  imageMode(CENTER);
}

void draw(){
  background(background);
  blend(what,0,0,259,194,300,50,259,194,LIGHTEST);
  blend(spacecore,0,0,300,282,1000,500,300,282,LIGHTEST);
}