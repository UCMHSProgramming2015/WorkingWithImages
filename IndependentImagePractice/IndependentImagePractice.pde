PImage farm;         //initialize variables 
PImage rain;
PImage sun;
PImage snow;
PImage tornado;
float sf = .55;             
PVector loc = new PVector();      //initialize vectors 
PVector vel = new PVector();




void setup() {   
  size(500, 500);        //set size of canvas
  farm = loadImage("farm.jpg");         //load and declare images from data folder to the name on the drawing 
  rain = loadImage("rain.png");
sun = loadImage("sun.png");
snow = loadImage("snow.gif");
  tornado = loadImage("tornado.png");
  
  imageMode(CENTER);        //change the image mode to center

  loc = new PVector(width/2, height/2);   //declare values for vel and loc         //set values for the vectors
  vel = new PVector(0, 1);
}






void draw () {

  tint(255, 100);          //change the tint of the drawing 
  background(0);       //set the background to black
  image(farm, width/2, height/2, rain.width*sf, rain.height*sf);        //draw the farm image
  if(frameCount < 40){       //use an if statement for if the framcount is less than 40 
  image(sun,400,75,100,100);    //draw the sun 
  }  


if(frameCount > 40 && frameCount < 100){      //use if statment for if the frame count is between 40 and 100
  noTint();          //change the tint back
  image(rain, loc.x, loc.y);      //draw the image rain 
  
  loc.add(vel);      //give the rain picture movement 
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

if(frameCount > 60){       //use an if statement for if the frame count is greater than 60 
filter(GRAY);         //turn the filter gray
}

if(frameCount > 100 && frameCount < 150){ //use an if statement for if the frame count is greater than 100 but less than 150    
   
 
  image(snow,loc.x,loc.y,500,500);     //draw the snow image
  filter(GRAY);              //add the filter to the image
  loc.add(vel);      //give the picture movement 
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

if(frameCount > 120){      /////use an if statement for if the frame count is greater than 120
 filter(BLUR,2);         //add a blur filter 
  
  
}


}

if(frameCount >150){    //use an if statement for if the frame count is greater than 150
  image(tornado,loc.x,loc.y,250,300);      //draw the tornado image 
  vel = new PVector(random(10,10), random(10,10));      ////declare a new value for the vector velocity
  loc.add(vel);      //give the image movement 
     
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