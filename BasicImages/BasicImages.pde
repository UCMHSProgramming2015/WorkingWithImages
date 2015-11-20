boolean gameStart = false;
PImage Artorias;
int spawn = 10;
PVector[] sif = new PVector[spawn];
PVector[] velka = new PVector[spawn];

void setup() {
  smooth();
  noStroke();
  size(1600, 800);
  frameRate(100);
  imageMode(CENTER);
  Artorias = loadImage("painting_study_06_07_2013_by_remainaery-d6c5srv (1).jpg");
  for (int i = 0; i < spawn; i++) {
    sif[i] = new PVector(width/2, height/2);
    velka[i] = new PVector(random(-5, 5), random(-5, 5));
  }
}

void draw() {
  if (gameStart == false) {
    background(0);

    for (int i = 0; i < spawn; i++) {
      image(Artorias, sif[i].x, sif[i].y, Artorias.width/4, Artorias.height/4);
      sif[i].add(velka[i]);

      if (sif[i].x - Artorias.width/8 <= 0) {
        velka[i].x = abs(velka[i].x);
      } else if (sif[i].x + Artorias.width/8 >= width) {
        velka[i].x = -abs(velka[i].x);
      }
      if (sif[i].y - Artorias.height/8 <= 0) {
        velka[i].y = abs(velka[i].y);
      } else if (sif[i].y + Artorias.height/8>= height) {
        velka[i].y = -abs(velka[i].y);
      }
    }
  }
  if (gameStart) {
    //second style here
  }
}

void mousePressed() {
  gameStart = !gameStart;
}