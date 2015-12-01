//a useless image editor for all your useless editing needs!

//create images
PImage Artorias; //size: 600*338
PImage Lautrec; //size: 466*326
PImage Solaire; //size: 600*338
PImage Artorias1;
PImage Lautrec1;
PImage Solaire1;

//define menu interger
int menu = 1;

//initalize intergers for filters
int gra = 1;
int thr = 1;
int inv = 1;
int ero = 1;

void setup(){
  
  //set size and background
  size(600,400);
  background(0);
  
  //define images
  Artorias = loadImage("Artorias.jpg");
  Lautrec = loadImage("Lautrec.jpg");
  Solaire = loadImage("Solaire.jpg");
  Artorias1 = loadImage("Artorias.jpg");
  Lautrec1 = loadImage("Lautrec.jpg");
  Solaire1 = loadImage("Solaire.jpg");
  
  imageMode(CENTER);
}

void draw(){
  
  //set text size and alignment
  textAlign(CENTER);
  textSize(25);
  stroke(255);
  
  //create start menu
  if(menu == 1){
    text("WELCOME TO DARK SOULS CHARACTER EDITOR!", width/2,  50);
    
    //list controls
    textSize(15);
    text("CONTROLS:", width/2, 110);
    text("THRESHOLD: T",width/2, 140);
    text("GRAY: G",width/2,170);
    text("INVERT: I",width/2,200);
    text("ERODE: E",width/2,230);
    text("LMOUSE: BLACK SHARPIE",width/2,260);
    text("RMOUSE: WHITE SHARPIE",width/2,290);
    
    textSize(25);
    text("PLEASE CLICK TO BEGIN", width/2,  380);
    
    //click mouse to move to next menu
    if (mousePressed == true){
      menu = 2;
    }
  }
  
  //create character selection menu
  if(menu == 2){
    background(0);
    text("Please click to select your character:", width/2, 50);
    textSize(15);
    text("A. Knight Solaire", width/6, 150);
    text("B. Knight Lautrec", width/2, 150);
    text("C. Knight Artorias", 5*width/6, 150);
    
    //resize images to 1/3 size for selection
    Artorias1.resize(600/3, 338/3);
    Lautrec1.resize(466/3, 326/3);
    Solaire1.resize(600/3, 338/3);
    
    //draw images
    image(Solaire1, width/6, 250);
    image(Lautrec1, width/2, 250);
    image(Artorias1, 5*width/6, 250);
    
    //allow transition to next menus
    if(mousePressed == true){
      if(mouseY < 300){
        if(mouseX < width/3){
          menu = 3;
        }
        if(mouseX < 2*width/3 && mouseX > width/3){
          menu = 4;
        }
        if(mouseX > 2*width/3){
          menu = 5;
        }
      }
    }
  }
  
  //Solaire editor; draw Solaire
  if(menu == 3){
    background(0);
    image(Solaire, width/2,height/2);
    noLoop(); //stops loop
  }
  
  //Lautrec editor; draw Lautrec
  if(menu == 4){
    background(0);
    image(Lautrec, width/2,height/2);
    noLoop(); //stops loop
  }
  
  //Artorias editor; draw Artorias
  if(menu == 5){
    background(0);
    image(Artorias, width/2,height/2);
    noLoop(); //stops loop
  }
}


//create editor; different keys activate different filters via the booleans assigned to them
//noLoop command means filters are toggled once per click
void keyTyped(){
  
  //t key activates the Threshold filter
  if(key == 't' || key == 'T'){
      if(thr == 2){
        thr = 1;
        noLoop();
      }else{
        thr = 2;
        noLoop();
      }
   }
   
   //g key activates the Gray filter
    if(key == 'g' || key == 'G'){
      if(gra == 2){
        gra = 1;
        noLoop();
      }else{
        gra = 2;
        noLoop();
      }
    }
    
    //i key activates the Invert filter
    if(key == 'i' || key == 'I'){
      if(inv == 2){
        inv = 1;
        noLoop();
      }else{
        inv = 2;
        noLoop();
      }
    }
    
    //e key activates the Invert filter
    if(key == 'e' || key == 'E'){
      if(ero == 2){
        ero = 1;
        noLoop();
      }else{
        ero = 2;
        noLoop();
      }
    }
      
  //apply filters when keys are clicked    
  if(thr == 2){
    filter(THRESHOLD);
  }
  if(gra == 2){
    filter(GRAY);
  }
  if(inv == 2){
    filter(INVERT);
  }
  if(ero == 2){
    filter(ERODE);
  }
}

//create sharpie marker controlled with mouse for use on images
void mousePressed(){
  if(menu >= 3){
    //left mouse button draws in black
    if(mouseButton == LEFT){
      stroke(0);
      fill(0);
    }
    
    //right mouse button draws in white
    else if(mouseButton == RIGHT){
      stroke(255);
      fill(255);
    }
    
    //draw the ellipses centered on the mouse
    ellipse(mouseX, mouseY, 20, 20);
  } 
}