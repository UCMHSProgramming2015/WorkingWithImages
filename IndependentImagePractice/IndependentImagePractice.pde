
boolean left, right, jumping;
PImage mariofinal, floor, background;
float speed, x, y, jumpSpeed;
float origJumpSpeed ;
float gravity = 1;
void setup() {
  size(800, 600);
  mariofinal=loadImage("Mario-Run.png");
  floor=loadImage("floor.jpg");
  background= loadImage("mario background.jpg");
  
  x=-100;
  speed=5;
  y=350;
  jumpSpeed=-15;
  origJumpSpeed=jumpSpeed;
}

void draw() {
  images();
  movemario();
  restrictmario();
}

void images() {
  image(background, 0, 0, 800, 550);
  image(mariofinal, x, y);
  image(floor, 0, 550, 800, 50);
}

void movemario() {
  if (left) {    // uses boolean true or false statement to move left paddle up if the left key is pressed
    x = x - speed;
  }
  if (right) {
    x = x + speed;  // uses boolean true or false statement to move right if the right key is pressed
  } 
  if (jumping == true) {
    jumpSpeed += gravity;
    y += jumpSpeed;
    if (y > 350) {
      y = 350;
      jumping = false;
      jumpSpeed = origJumpSpeed;
    }
  }
}


void keyPressed() {
  if (keyCode == LEFT) {
    left = true;
  }
  if (keyCode == RIGHT) {
    right = true;
  }
  if (keyCode == UP) {
    jumping =true;
  }
}

void keyReleased() {

  if (keyCode == LEFT) {
    left = false;
  }
  if (keyCode == RIGHT) {
    right = false;
  }
}


void restrictmario() {
  if (x - speed < -100) {
    x = x + speed;
  }
}