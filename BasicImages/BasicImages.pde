PImage xlb; //Xiao Long Bao
PImage bbh; //Bun Bo Hue
PImage shm; //Shanghai Mian
PImage hgsk; //Hangguo Shao Kao
float size = 5;

void setup () {
  size (800, 600);

  //load pic to Image
  xlb = loadImage ("xiao long bao zi.jpg");
  bbh = loadImage ("bun bo hue.jpg");
  shm = loadImage ("shanghai mian.jpg");
  hgsk = loadImage ("hangguo shao kao.jpg");  
  imageMode(CORNER);
}

void draw () {
  background (0);
  //set sz based on mouseY
  size = map(mouseY, 0, height, 1, 20);

  //repeat so more circles are drawn per frame
  for (int i = 0; i < 200; i++) {
    int x = int(random(width));
    int y = int(random(height));
    fill(xlb.get(x, y));
    ellipse(x, y, size, size);
  }

  //display
  image(xlb, 0, 0);
  image(bbh, width-371, 0);
  image(shm, 0, height-288);
  image(hgsk, width-330, height-173);
}