PImage target, bullet;


void setup() {
  target = loadImage ("target.png");
  size(600, 600);
  imageMode(CENTER);
  background(0);
}


void draw() {
  line(200,0,200,height);
  line(400,0,400,height);
  line(0,180,width,180);
  line(0,420,width,420);
  if (mousePressed && mouseX > 180 && mouseX < 420 && mouseY > 200 && mouseY < 400){
    println("yes");
    
  }else{
    println("no");
  }
  
  image(target, width/2, height/2);
}