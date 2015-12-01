PImage Tesla;
PImage JohnCena;
PImage GrumpyCat;
PImage TomCruise;
PImage TheEnd;
PImage TelevisionSnowflakes;
int state = 1;

void setup(){
  size(800, 800);
  background(0);
  Tesla = loadImage("Tesla.jpg");
  JohnCena = loadImage("JohnCena.jpg");
  GrumpyCat = loadImage("GrumpyCat.jpg");
  TomCruise = loadImage("TomCruise.png");
  TheEnd = loadImage("TheEnd.jpg");
  TelevisionSnowflakes = loadImage("TelevisionSnowflakes.jpg");
}

void draw(){
  if (state == 1){
    image(Tesla, 0, 0);
    filter(THRESHOLD);
    textSize(40);
    textAlign(CENTER);
    text("WHO IS IT?", 450, 600);
  }
  
  if (state == 2){
    image(JohnCena, 0, 0);
    filter(POSTERIZE, 7);
    textSize(80);
    text("IT\'S JOHN CENA!", width/2, 600);
    stroke(255);
    strokeWeight(8);
    line(30,630,770,630);
  }
  
  if (state == 3){
    image(GrumpyCat, 0, 0);
    filter(GRAY);
    textSize(50);
    text("NOT FUNNY...", width/2, 100);
    textSize(30);
    text("YOU HAVE MADE GRUMPY CAT MORE GRUMPY", width/2, 750);
  }
  
  if(state == 4){
    image(TomCruise, 0, 0);
    filter(BLUR, 4);
    if (keyPressed){
      image(TomCruise, 0, 0);
      filter(BLUR, 0);
    }
    textSize(50);
    text("JUST KIDDING!", width/2, 100);
    text("IT\'S HILARIOUS!", width/2, 750);
    textSize(20);
    text("HOLD SPACE TO FOCUS", 650, 400);
    strokeWeight(3);
    line(530, 420, 770, 420);
  }
  
  if (state == 5){
    background(0);
    //image(TelevisionSnowflakes, 0, 0);
    TheEnd.mask(TelevisionSnowflakes);
    //filter(POSTERIZE, 4);
    image(TheEnd, 0, 0);
    noLoop();
  }
}

void mousePressed(){
  state += 1;
}