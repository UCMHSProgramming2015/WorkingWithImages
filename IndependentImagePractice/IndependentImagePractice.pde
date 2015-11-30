PImage farm;
PImage rain;
PImage sun;
PImage snow;
PImage tornado;
float sf = .55;
PVector loc = new PVector();
PVector vel = new PVector();




void setup() {
  size(500, 500);
  farm = loadImage("farm.jpg");
  rain = loadImage("rain.png");
sun = loadImage("sun.png");
snow = loadImage("snow.gif");
  tornado = loadImage("tornado.png");
  
  imageMode(CENTER);

  loc = new PVector(width/2, height/2);   //set values for vel and loc 
  vel = new PVector(0, 1);
}






void draw () {

  tint(255, 100);
  background(0);
  image(farm, width/2, height/2, rain.width*sf, rain.height*sf);
  if(frameCount < 40){
  image(sun,400,75,100,100);
  }  


if(frameCount > 40 && frameCount < 100){
  tint(255);
  image(rain, loc.x, loc.y);
  
  loc.add(vel);
  if (loc.x  >= width) {        ///set parameters for moving the image
    loc.x = 0;
  } else if (loc.x  <= 0) {
    loc.x = width;
  }
  if (loc.y  >= height) {
    loc.y =0;
  } else if (loc.y  <= 0) {
    loc.y = height ;
  }

}

if(frameCount > 60){
filter(GRAY);
  
}

if(frameCount > 100 && frameCount < 150){
 
 
  image(snow,loc.x,loc.y,500,500); 
  filter(GRAY);
  loc.add(vel);
  if (loc.x  >= width) {        ///set parameters for moving the image
    loc.x = 0;
  } else if (loc.x  <= 0) {
    loc.x = width;
  }
  if (loc.y-250  >= height) {
    loc.y =0;
  } else if (loc.y <= 0) {
    loc.y = height ;
  }

if(frameCount > 120){
 filter(BLUR,2); 
  
  
}


}

if(frameCount >150){
  image(tornado,loc.x,loc.y,250,300);
  vel = new PVector(random(10,10), random(10,10));
  loc.add(vel);
  
  if (loc.x  >= width) {        ///set parameters for moving the image
    loc.x = 0;
  } else if (loc.x  <= 0) {
    loc.x = width;
  }
  if (loc.y-250  >= height) {
    loc.y =0;
  } else if (loc.y <= 0) {
    loc.y = height ;
  }
  



}

}