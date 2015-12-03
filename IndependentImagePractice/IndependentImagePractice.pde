PImage batman, bruce,logo; //added all images
  batman = loadImage("batmanmask.jpg");//initializes batman
  bruce = loadImage("bruce.jpg");//initializes bruce
  bruce.mask(batman);//masks bruce with batman in grayscale
  imageMode(CENTER);//makes images center point the point of origin
  logo = loadImage("bmlogo.jpg");//initializes logo
  
}

void draw() {
  background(frameCount%255);//makes the background slowly go from black to white
   image(logo,229,320);//places logo in the canvas
  image(bruce, 229,320 );//places bruce in the canvas
  filter(ERODE);//adds a filter to bruce and logo
 
  
}