PImage farm;
PImage rain;
PImage clouds;
float sf = .55;
PVector loc = new PVector();
PVector vel = new PVector();




void setup() {
  size(500, 500);
  farm = loadImage("farm.jpg");
  rain = loadImage("rain.png");
  clouds = loadImage("clouds.jpg");
  imageMode(CENTER);

  loc = new PVector(width/2, height/2);   //set values for vel and loc 
  vel = new PVector(1, 1);
}






void draw () {

  tint(255, 100);
  background(0);
  image(farm, width/2, height/2, rain.width*sf, rain.height*sf);
  
  
if(frameCount > 40){
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



}