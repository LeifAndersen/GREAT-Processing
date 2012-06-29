int x =0;
int y =0;
boolean collid;
PImage toast;
PImage backdrop;
void setup()
{
  size(1000, 750);
  background(255);
  backdrop = loadImage("backdrop.jpg");
  toast = loadImage("toast.jpg");
  frameRate(200);

  collid = false;
}
void draw()
{
  fill(0);
  imageMode(CORNER);
  background(255);
  image(backdrop, x, y);

  loadPixels();
  if (keyPressed)
  {
    if (key == 'w')
    {
      collid = (red(pixels[width/2+((height/2)-3)*width])  == 0 ||
        red(pixels[((width/2)+100)+((height/2)-3)*width])  == 0);
      if (!collid)
      {
        y=y+3;
      }
    }
    if (key == 's')
    {
      collid = (red(pixels[width/2+((height/2)+103)*width]) == 0 ||
        red(pixels[((width/2)+100)+((height/2)+103)*width])  == 0);
      if (!collid)

      {
        y=y-3;
      }
    }
    if (key == 'd')
    {
      collid = (red(pixels[((width/2)+103)+((height/2)+100)*width])  == 0 ||
                red(pixels[((width/2)+103)+((height/2))*width])  == 0);
      if (!collid)
      {
        x=x-3;
      }
    }
    if (key == 'a')
    { 
      collid = (red(pixels[(width/2)-3+((height/2)+100)*width]) == 0 ||
        red(pixels[(width/2)-3+((height/2))*width])  == 0);
      if (!collid)
      {
        x=x+3;
      }
    }
  }

  // draw toast
  imageMode(CORNER);
  image(toast,width/2, height/2, 100, 100);
}

