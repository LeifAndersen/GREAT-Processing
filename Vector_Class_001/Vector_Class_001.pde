Vector position = new Vector(50, 50);

void setup()
{
  size(600, 600);
  background(255);
  fill(255, 0, 0);
}

void draw()
{
  background(255);
  ellipse(position.x, position.y, 25, 25);
  position.x = (position.x + 5) % 600;
  position.y = (position.y + 5) % 600;
}

class Vector
{
  float x, y;
  
  Vector(float x, float y)
  {
    this.x = x;
    this.y = y;
  }
}
