PImage[] images = new PImage[5];
int curImage = 0;
void setup()
{
  size(1000, 750);
  background(0);
  noStroke();
  images[0] = loadImage("WHY.png");
  images[1]= loadImage("WheresButter.png");
  images[2]= loadImage("SCENE3.png");
  images[3] = loadImage("SCENE4.png");
  images[4] = loadImage ("Fin.png");
}

void draw() 
 {
   image(images[curImage],0,0);
 }
 void mousePressed()
 {
   curImage++;
   curImage = curImage % 5;
 }
