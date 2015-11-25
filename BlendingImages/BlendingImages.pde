void setup(){
size(800,600);
}
void draw(){
  filter(BLUR); 
fill(random(255), random(255), random(255));
ellipse(random(width), random(height), random(100), random(100));
}