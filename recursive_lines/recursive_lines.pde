float halfLife = 2;

void setup()
{
  size(600, 600);
  background(255);
}

void draw()
{
  drawLine(width/2, height/2, height/2, false);
}

void drawLine(float x, float y, float length, boolean horizontal)
{
  if (length < 6)
  {
    return;
  }

  if (horizontal)
  {
    line(x - length/2, y, x + length/2, y);
    drawLine( (x - length/4), y, length/halfLife, !horizontal);
    drawLine( (x + length/4), y, length/halfLife, !horizontal);
  }
  else
  {
    line(x, y - length/2, x, y + length/2);
    drawLine( x, (y - length/4), length/halfLife, !horizontal);
    drawLine( x, (y + length/4), length/halfLife, !horizontal);
  }
}

void keyPressed()
{
  if (key == 'a')
  {
    halfLife -= 0.01;
  }
  if (key == 's')
  {
    halfLife += 0.01;
  }
}

