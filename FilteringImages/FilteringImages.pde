PImage hedgehog;

void setup(){
  hedgehog=loadImage("hedgehog with a strawberry hat.jpg");
  size(550,413);
  imageMode(CENTER);
}

void draw(){
  background(hedgehog);
  //adding different types of filters
  filter(GRAY);
  //filter(THRESHOLD,.6);
}