PImage wutangclan;
PImage kdot;
PImage icecream;
float scaleFactor = .5;
void setup() {
  size(800,600);
  wutangclan = loadImage("wu.jpg");
  kdot = loadImage("kdot.jpg");
  frameRate(5);
  icecream = loadImage("paletero.jpg");
}

void draw() {
  tint(200,0,255);
  image(wutangclan,random(width),random(height),wutangclan.width*scaleFactor,wutangclan.height*scaleFactor);
 tint(34,56,156);
  image(icecream,random(width),random(height),wutangclan.width*scaleFactor,wutangclan.height*scaleFactor);
  tint(200,250,5);
 image(kdot,random(width),random(height),wutangclan.width*scaleFactor,wutangclan.height*scaleFactor);

}