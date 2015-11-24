PImage corn;
PImage popcorn;
PVector loc;
PVector vel;

void setup(){
  size(800,600);
  corn = loadImage("corn.jpg");
  popcorn = loadImage("popcorn.jpg");
  
  loc = new PVector(400,300);
  vel = new PVector(5,5);
  
  
  imageMode(CENTER);
  
  background(0);
  noStroke();
}
  
void draw(){
  background(0);
  image(popcorn, loc.x, loc.y);
  popcorn.mask(corn);
  loc.add(vel);
  
  if (loc.x > width){
    vel.x = -vel.x;
  }
  if (loc.x < 0){
    vel.x = -vel.x;
  }
  if (loc.y > height){
    vel.y = -vel.y;
  }
  if (loc.y < 0){
    vel.y = -vel.y;
  }
}