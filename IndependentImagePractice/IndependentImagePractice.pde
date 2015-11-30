//declare variables
int num = 15;
float acc = 1;
float theta = 0;
PImage tank;
PImage fish;
PVector loc;
PVector vel;
PImage [] bubbles = new PImage[num];
PVector [] bubLoc = new PVector[num];
float [] bubVel = new float[num];
float [] diam = new float[num];

void setup() {
  //set size and color mode
  size(610, 458);
  colorMode(HSB);
  
  //load images
  fish = loadImage("fish.png");
  tank = loadImage("tank.jpg");
  
  //resize background
  tank.resize(width, height);
  
  //start fish in center with no velocity
  loc = new PVector(width/2, height/2);
  vel = new PVector(0, 0);

  //define size, velocity, and location of all bubbles
  for (int i = 0; i < num; i++) {
    diam [i] = random(5, 20);
    bubbles[i] = loadImage("bubble.png");
    bubbles[i].resize(round(diam[i]), round(diam[i]));
    bubVel[i] = random(2, 10);
    bubLoc[i] = new PVector(random(width), random(height));
  }
}

void draw() {
  //background of fish tank
  background(tank);

  //bounce fish off of walls and bottom with lower speed
  if (loc.x < 0) {
    loc.x = 0;
    vel.x *= -0.5;
  } else if (loc.x > width) {
    loc.x = width;
    vel.x *= -0.5;
  }
  if (loc.y > height) {
    loc.y = height;
    vel.y *= -0.5;
  }
  
  //draw bubbles
  for (int i = 0; i < num; i++) {
    if (bubLoc[i].y + diam[i] <= 0) {
      bubLoc[i] = new PVector(random(width), height+random(height));
    }
    //draw fish in front of about half of the bubbles
    if (i == num/2) {
      pushMatrix();
      translate(loc.x, loc.y);
      rotate(theta);
      imageMode(CENTER);
      noTint();
      scale(0.05, 0.05);
      image(fish, 0, 0);
      popMatrix();
      imageMode(CORNER);
    }
    image(bubbles[i], bubLoc[i].x, bubLoc[i].y);
    bubLoc[i].y -= bubVel[i];
  }
  
  //add velocity to fish
  loc.add(vel);
  
  if (loc.y < 0) {
    vel.y += 1;              //velocity increases if the fish jumps out of the tank
  } else {
    loc.y += 0.5;            //fish drifts down in the water
  }

  if (keyPressed) {
    //reposition fish in center with no velocity or angle
    if (key == ENTER) {
      loc = new PVector(width/2, height/2);
      vel = new PVector(0, 0);
      theta = 0;
    }
    
    //control fish with arrow keys
    if (keyCode == UP) {
      if (loc.y > 0) {              //limit control of speed to underwater
        vel.x += acc*cos(theta);
        vel.y += acc*sin(theta);
      }
    } else if (keyCode == DOWN) {
      if (loc.y > 0) {
        vel.x *= 0.9;
        vel.y *= 0.9;
      }
    }
    if (keyCode == LEFT) {
      theta -= 0.1;
    } else if (keyCode == RIGHT) {
      theta += 0.1;
    }
  }

  //darken the bottom of the tank
  for (int i = 0; i < height; i++) {
    stroke(0,128*i/height);
    line(0,i,width,i);
  }
  
  //blur image as water
  filter(BLUR);
}