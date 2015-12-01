PImage jets, mask, nyc; //create PImages
void setup(){
  size(600,600); //size of plot
  jets=loadImage("Jets.jpg");  //load image "jets", which is the jets logo
  nyc=loadImage("NYC.jpg"); //load image "nyc", which is the NY skyline
  nyc.blend(jets,0,0,600,600,0,0,600,600,MULTIPLY); //blend the jets logo onto nyc
}
void draw(){
  image(nyc,0,0);  //draw image nyc
  tint(mouseY*.425,0,0);  //as you move mouse down, the image is tinted more red
}
  