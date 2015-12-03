PImage matty;
PImage stage;

void setup(){
  size(800,600);
  
  matty = loadImage("evangelical.jpg");
  stage = loadImage("setup stage thing.jpg");
  
  stage.blend(matty,0,0,800,600,0,0,800,600,OVERLAY);
}

void draw(){
  image(matty,0,0);
  image(stage,0,0);
}

void mousePressed(){
  stage.blend(matty,0,0,800,600,0,0,800,600,BURN);
}