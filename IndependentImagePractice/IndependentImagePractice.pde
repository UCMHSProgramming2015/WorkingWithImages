PImage bloodborne, logo;
PVector ball, velka;

void setup() {
  size(1067, 636);
  noStroke();
  smooth();
  frameRate(30);
  imageMode(CENTER);
  bloodborne = loadImage("bloodborne_final_111_by_theonlyoneoneone-d858362.jpg");
  logo = loadImage("BBlogo.png");
  ball = new PVector(width/2, height/2);
  velka = new PVector(random(-5, 5), random(-5, 5));
}

void draw() {
  background(0);

  image(bloodborne, width/2, height/2, bloodborne.width, bloodborne.height);
  image(logo, width/2, height/2, logo.width, logo.height);
  filter(BLUR, map(ball.y, 0, height, .01, 10));

  fill(250);
  ellipse(ball.x, ball.y, 30, 30);

  ball.add(velka);

  if (ball.x <= 0) {
    velka.x = abs(velka.x);
  } else if (ball.x >= width) {
    velka.x = -abs(velka.x);
  }
  if (ball.y <= 0) {
    velka.y = abs(velka.y);
  } else if (ball.y >= height) {
    velka.y = -abs(velka.y);
  }
}