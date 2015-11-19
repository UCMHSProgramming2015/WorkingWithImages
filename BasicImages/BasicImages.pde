PImage snake;
void setup()
{
  size(600, 450);
  snake = loadImage("snake.jpg");
  background(snake);
  noStroke();
}
void draw()
{
  /*
  float scaleFactor = random(0.01, 1);
  tint(50, 200, 100, 150);
  image(snake, random(width), random(height), snake.width*scaleFactor, snake.height*scaleFactor);
  */
  for(int i = 0; i < snake.height; i += 5)
  {
    for(int j = 0; j < snake.width; j += 5)
    {
      fill(snake.get(j, i));
      rect(j, i, 5, 5);
    }
  }
}