PImage B1;
PImage B2;
float transparency= 255;
float fade;
void setup(){
 size(1000,1000);
 
B1= loadImage("Beatles1.jpg");
B2= loadImage("Beatles2.jpg");

}
void draw(){
 background(B2);
 fade= fade+.1;
 transparency=transparency-fade;
if(transparency<0|| transparency>255){fade= -fade;}
//else if(transparency<=0){transparency+=.9;
//}
tint(255,transparency);
image(B1,0,0);



  
}