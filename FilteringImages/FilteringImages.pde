PImage vacation;
void setup (){
  size(800,600);
  vacation = loadImage("vacation spot.jpg");
}
void draw (){
  background (0);
  image(vacation,0,0,width,height);
  filter(GRAY);
}