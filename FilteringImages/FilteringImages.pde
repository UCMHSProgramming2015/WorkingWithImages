
PImage series;


void setup(){
size(488,469);
series = loadImage("series.jpg");
   
  
}


void draw(){

 image(series,0,0);
 filter(POSTERIZE,2);
  
}