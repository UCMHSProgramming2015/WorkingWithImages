//sketch->add file: select file to add to data folder
//control+k is shortcut to access data folder

//declare variables
PImage pusheen;
float scaleFactor = .1;

void setup(){
size(600,800);  //set size of screen
noCursor();  //rid of cursor
noStroke();

//initialize variables
pusheen=loadImage("Pusheen.jpg");
}

void draw(){
for(int i=0; i<50;i++){
int x=int(random(width));
int y=int(random(height));
fill(pusheen.get(x,y));
ellipse(x,y,20,20);
}
  
image(pusheen,mouseX,mouseY,pusheen.width*scaleFactor,pusheen.height*scaleFactor);  //display image
}

void keyPressed(){  //run this once each time I press a key
  
if(keyCode==UP){  //if key is up arrow, increase scale factor
  scaleFactor+=.01;
    }else if(keyCode==DOWN&&scaleFactor>.2){  //otherwise, if key is down arrow AND scale factor is > .2, decrease scale factor
      scaleFactor-=.1;
    }
}