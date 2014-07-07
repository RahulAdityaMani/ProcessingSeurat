/* @pjs preload = "funny-face-12.jpg";*/
PImage poop;
int x;
int y;
color c;
void setup()
{
    //sets size to dimensions of the image
    size(500, 470);
    //loads and draws image
    poop = loadImage("funny-face-12.jpg");
    image(poop, 0, 0);
    /*draws background over top of the image and sets
    framerate to increase speed of draw loop*/
    background(255);
    frameRate(250);
}
void draw()
{ 
    //sets x and y to random values within the height and width requirements
    x = (int)random(0, 500);
    y = (int)random(0, 470);
    //sets color to random pixel from the random x and y values
    c = poop.get(x, y);
    //fills ellipses to color found in the random pixel
    fill(c);
    noStroke();
    ellipseMode(CENTER);
    ellipse(x, y, 10, 10);
}
