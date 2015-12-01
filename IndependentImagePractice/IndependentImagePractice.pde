PImage mainImage;//declare the picture variable   
PImage mask;
PImage point;
float scaleFactor;// scale the picture 
float c=1;

void setup(){//runs settings once 
  size(300,279);
  mainImage=loadImage("stars.jpg");// initialize variable picture 
  mask=loadImage("Bazinga.jpg");
  point=loadImage("logo.jpg");
  scaleFactor=.1;
  imageMode(CENTER);// how the image will appear on the screen
    mainImage.blend(mask, 0,0,300,279,0,0,300,279,ADD);//initialize the blending in the picture 
    noStroke();
   
  
}

void draw(){// runs settings in a loop
  image(mainImage, width/2, height/2);// redraw the image 
  filter(GRAY);
  if(mousePressed){
    image(point,mouseX,mouseY,point.width*scaleFactor, point.height*scaleFactor);
  } 

}
void keyPressed(){
  if(keyCode==ESC){
    exit();
    
  }
  
  }

    