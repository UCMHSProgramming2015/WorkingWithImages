PImage wu;
void setup () {
 size(800,800);
 wu = loadImage("wu.jpg");
 image(wu,100,100);
}
void draw() {
filter(ERODE);

}