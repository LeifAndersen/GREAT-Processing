PImage[] images = new PImage[5];
int curImage = 0;
void setup()
{
  size(1000, 900);
  background(0);
  noStroke();
  images[0] = loadImage("toastyscene1.png");
  images[1]= loadImage("toastyscene2.png");
  images[2]= loadImage("toastyscene3.png");
  images[3] = loadImage("toastyscene4.png");
  images[4] = loadImage ("toastyscene6.png");
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
