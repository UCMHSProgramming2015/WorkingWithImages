PImage bird;
float scale = .1;
PVector loc;
PVector vel;
PVector acc;

void setup(){
 size(800, 600);
 bird = loadImage("bird.jpg"); 
 loc = new PVector(0, 0);
 vel = new PVector(random(5), random(5));
 acc = PVector.random2D();
 acc.mult(.1);

}

void draw(){
  background(0);
  image(bird, loc.x, loc.y, bird.width * scale, bird.height * scale);
  imageMode(CENTER);
  
  acc = PVector.random2D();
  acc.mult(.1);
  vel.add(acc);
  
  loc.add(vel);
 
  if(loc.x >= width){
    loc.x = 0;
  } else if(loc.x <= 0){
    loc.x = width;
  }
  
   if(loc.y >= height){
    loc.y = 0;
  } else if(loc.y <=0){
    loc.y = height;
  }
}