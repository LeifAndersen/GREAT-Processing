Leif leif;

float curW = 0;
float curH = 0;

void setup()
{
  size(600, 600);
  strokeWeight(1);
  smooth();
  background(255);
  leif = new Leif(width/2, height/2, width/2, height/2);
}

void draw()
{
  background(255);
  curW = (curW + 1) % width;
  curH = (curH + 1) % height;
  leif.resize(curW, curH);
  leif.move(width/2 - curW/2, height/2 - curH/2);
  leif.draw();
}

class Leif
{
  float width, height;
  float x, y;

  Leif(float x, float y, float width, float height)
  {
    this.width = width;
    this.height = height;
    this.x = x;
    this.y = y;
  }

  void resize(float width, float height)
  {
    this.width = width;
    this.height = height;
  }

  void move(float x, float y)
  {
    this.x = x;
    this.y = y;
  }

  void draw()
  {
    stroke(0, 0, 0);
    fill(0, 128, 255);
    ellipse(x + width/2, y + height*23/24, width*5/6, height*7/12); // Shirt
    fill(250, 210, 50);
    ellipse(x + width/2, y + height*5/6, width/3, height/3); // Neck
    ellipse(x + width/12, y + height*11/24, width/12, height/12); // Ears
    ellipse(x + width*11/12, y + height*11/24, width/12, height/12);
    ellipse(x + width/2, y + height/2, width*5/6, height*5/6); // Head
    fill(255, 255, 255);
    ellipse(x + width/3, y + height*5/12, width/6, height/6); // Eyes
    ellipse(x + width*2/3, y + height*5/12, width/6, height/6);
    fill(230, 190, 0);
    arc(x + width/2, y + height*13/24, width/6, height/6, 1*PI/4, 3*PI/4); // Nose
    fill(255, 255, 255);
    arc(x + width/2, y + height*17/24, width/3, height/6, 0, PI); // Mouth
    fill(0, 0, 255);
    ellipse(x + width*19/60, y + height*13/30, width/12, width/12); // Eye Pupals
    ellipse(x + width*39/60, y + height*13/30, width/12, width/12);
    fill(100, 50, 0);
    arc(x + width/2, y + height*3/12, width*5/6, height/3, 3*PI/4, 9*PI/4); // Hair
    fill(0, 0, 0);
    rect(x + width*1/30, y + height*5/12, width*13/60, height/60); // Glasses
    rect(x + width*5/12, y + height*5/12, width/6, height/60);
    rect(x + width*9/12, y + height*5/12, width*13/60, height/60);
  }
}

