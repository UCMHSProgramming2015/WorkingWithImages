PImage Tesla;
PImage JohnCena;
PImage GrumpyCat;
PImage TomCruise;
PImage TheEnd;
int state = 1;

void setup(){
  size(800, 800);
  background(0);
  Tesla = loadImage("Tesla.jpg");
  JohnCena = loadImage("JohnCena.jpg");
  GrumpyCat = loadImage("GrumpyCat.jpg");
  TomCruise = loadImage("TomCruise.png");
  TheEnd = loadImage("TheEnd.jpg");
}

void draw(){
  if (state == 1){
    image(Tesla, 0, 0);
    filter(THRESHOLD);
  }
  
  if (state == 2){
    image(JohnCena, 0, 0);
    filter(POSTERIZE, 7);
  }
  
  if (state == 3){
    image(GrumpyCat, 0, 0);
    filter(GRAY);
  }
  
  if(state == 4){
    image(TomCruise, 0, 0);
    filter(BLUR, 4);
  }
  
  if (state == 5){
    image(TheEnd, 0, 0);
    filter(POSTERIZE, 4);
  }
}

void mousePressed(){
  state += 1;
}