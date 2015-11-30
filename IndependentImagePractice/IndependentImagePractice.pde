//PImage declared
PImage bin, cha, yun, mask, duck;

//Fun variable declared!
int diam = 25;
int x, y;
int count = 500;
PVector []loc = new PVector [count];
PVector []vel = new PVector [count];
PVector []acc = new PVector [count];


void setup () {
  //Setup
  size (800, 600);
  noStroke();

  //Fun variables loaded
  for (int i = 0; i < count; i++) {
    loc[i] = new PVector (width/2, height/2);
    vel[i] = new PVector (0, 0);
    acc[i] = PVector.random2D();
    acc[i].mult(.5);
  }


  //Pictures loaded
  bin = loadImage("binoculars.png");
  yun = loadImage("el yunque cave.jpg");
  cha = loadImage("chang kong path.jpg");
  mask = loadImage("mask.jpg");
  duck = loadImage("duck.PNG");

  //Gradient
  cha.mask(mask);
}

void draw () {
  //Images drawn

  imageMode(CORNER);
  image(mask, 325, 0);
  image(yun, 0, 0);
  image(cha, 325, 0);
  image(bin, 0, 0);
  imageMode(CENTER);

  if (mousePressed) {
    image(duck, mouseX, mouseY);
  }

  for (int i = 0; i < count; i++) {
    //draw ball
    x=int(loc[i].x);
    y=int(loc[i].y);
    fill(get(x, y), 70);
    ellipse(loc[i].x, loc[i].y, diam, diam);

    acc[i] = PVector.random2D();
    acc[i].mult(.5);
    vel[i].limit(3);

    //add velocity to position
    loc[i].add(vel[i]);
    vel[i].add(acc[i]);

    //wrap the ball's position
    if (loc[i].x >= width) {
      loc[i].x = 0;    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (loc[i].x <= 0) {
      loc[i].x = width;     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (loc[i].y >= height) {
      loc[i].y = 0;
    } else if (loc[i].y <= 0) {
      loc[i].y = height;
    }
  }
}