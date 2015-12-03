PImage space;
PImage em1;
PImage em2;
PImage em3;
PImage em4;
PImage em5;
float EM;
float FI;

void setup () {
  size(800,600);
  imageMode(CENTER);
  space = loadImage("dr spaceman.jpg");
  em1 = loadImage("em1.jpg");
  em2 = loadImage("em2.jpg");
  em3 = loadImage("em3.jpg");
  em4 = loadImage("em4.jpg");
  em4 = loadImage("em4.jpg");
  image(space,width/2,height/2);
  space.resize(800,600);
  frameRate(500);
}

void draw () {
  EM = random(5);
  FI = random(5);
  em1.resize(25,25);
  em2.resize(25,25);
  //em3.resize(50,50);
  //em4.resize(50,50);
  //em5.resize(50,50);
  if (mousePressed == true); {
    if (EM == 1); {
      image(em1,mouseX,mouseY);
    }
    if (EM == 9); {
      image(em2,mouseX,mouseY);
    }
 //   if (EM == 3); {
 //     image(em3,mouseX,mouseY);
//    }
 //   if (EM == 4); {
 //     image(em4,mouseX,mouseY);
 //   }
 //   if (EM == 5); {
 //     image(em5,mouseX,mouseY);
//    }
    //image(em2,mouseX,mouseY);
    //image(em3,mouseX,mouseY);
    //image(em4,mouseX,mouseY);
    //image(em5,mouseX,mouseY);
  }
  if (FI == 1); {
    filter(THRESHOLD);
  }
  if (FI == 2); {
    filter(INVERT);
  }
  if (FI == 3); {
    filter(POSTERIZE,4);
  }
  if (FI == 4); {
    filter(GRAY);
  }
  if (FI == 5); {
    filter(BLUR,4);
  }
}