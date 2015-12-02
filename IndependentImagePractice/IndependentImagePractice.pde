
  import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*; // imports the library to the computer

PImage fire; //Adds an image to the file
PImage snowman; //Adds an image to the file


AudioPlayer player;
Minim minim;//audio context

void setup() {
  size(800, 600); //sets size of background 
  snowman = loadImage("snowman.jpg"); //loads the image in
  fire = loadImage("fire.jpg"); // loads the image in
  fire.mask(snowman); //sets a mask of the image behind the other
  background (0); //sets background color
  minim = new Minim(this);
  player = minim.loadFile("fire sound.mp3", 2048); //loads audio file
  player.play(); //plays audio file
}

void draw() {

  image(snowman, 0, 0); //draws image
  filter(BLUR, .7); //sets a filter for the image
  filter(POSTERIZE, 20); //only allows some colors to show


  image(fire, 0, 0); //draws the image
  tint(255, 25); //sets opacity
}