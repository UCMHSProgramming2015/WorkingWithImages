PImage snake;
float scaleFactor;
void setup()
{
  size(600, 600);
  snake = loadImage("snake.jpg");
}
void draw()
{
  scaleFactor = random(0.05, 0.5);
  image(snake, random(width), random(height), snake.width*scaleFactor, snake.height*scaleFactor);
}