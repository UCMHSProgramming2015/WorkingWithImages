PImage Tesla;  //declares images
PImage JohnCena;
PImage GrumpyCat;
PImage TomCruise;
PImage TheEnd;
PImage TelevisionSnowflakes;
int state = 1;  //declares variable to trigger next slide

void setup(){
  
  //size and background
  size(800, 800);
  background(0);
  
  //load images found in "data" folder
  Tesla = loadImage("Tesla.jpg");
  JohnCena = loadImage("JohnCena.jpg");
  GrumpyCat = loadImage("GrumpyCat.jpg");
  TomCruise = loadImage("TomCruise.png");
  TheEnd = loadImage("TheEnd.jpg");
  TelevisionSnowflakes = loadImage("TelevisionSnowflakes.jpg");
}

void draw(){
  
  //first slide is Tesla with threshold filter
  if (state == 1){
    
    //image
    image(Tesla, 0, 0);
    filter(THRESHOLD);
    
    //text
    textSize(40);
    textAlign(CENTER);
    text("WHO IS IT?", 450, 600);
  }
  
  //next is John Cena with posterize filter of magnitude 7
  if (state == 2){
    
    //image
    image(JohnCena, 0, 0);
    filter(POSTERIZE, 7);
    
    //text
    textSize(80);
    text("IT\'S JOHN CENA!", width/2, 600);
    
    //artistic line
    stroke(255);
    strokeWeight(8);
    line(30,630,770,630);
  }
  
  //after that we have a grayscale Grumpy Cat
  if (state == 3){
    
    //image
    image(GrumpyCat, 0, 0);
    filter(GRAY);
    
    //text
    textSize(50);
    text("NOT FUNNY...", width/2, 100);
    textSize(30);
    text("YOU HAVE MADE GRUMPY CAT MORE GRUMPY", width/2, 750);
  }
  
  //then there's Tom Cruise
  if(state == 4){
    
    //blurred Tom Cruise...
    image(TomCruise, 0, 0);
    filter(BLUR, 4);
    
    if (keyPressed){
      image(TomCruise, 0, 0);  
      filter(BLUR, 0);  //unless a key is held down
    }
    
    //more text
    textSize(50);
    text("JUST KIDDING!", width/2, 100);
    text("IT\'S HILARIOUS!", width/2, 750);
    textSize(20);
    text("HOLD SPACE TO FOCUS", 650, 400);
    
    //another artistic line
    strokeWeight(3);
    line(530, 420, 770, 420);
  }
  
  //Finally, "The End" masked with television snowflakes
  if (state == 5){
    
    //refresh background
    background(0);
    
    //image masked on another image
    TheEnd.mask(TelevisionSnowflakes);
    image(TheEnd, 0, 0);
  }
}

//mouse click triggers next slide
void mousePressed(){
  state += 1;
}