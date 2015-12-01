PImage mainImage;//declare the picture variable   
PImage mask;
float scaleFactor;// scale the picture 

void setup(){//runs settings once 
  size(600,600);
  mainImage=loadImage("gray2.jpg");// initialize variable picture 
  mask=loadImage("benderface.jpg");
  scaleFactor=1;
  imageMode(CENTER);// how the image will appear on the screen
    mainImage.blend(mask, 0,0,600,600,0,0,600,600,SUBTRACT);//initialize the blending in the picture 

  
}

void draw(){// runs settings in a loop 
  background(0);
  image(mainImage, width/2, height/2);// redraw the image 

  
   
  
}

void keyPressed(){
  if(keyCode==ESC){
    exit();
    
  }
}