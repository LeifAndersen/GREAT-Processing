ArrayList positions = new ArrayList();

void setup()
{
  // Set up Cavnis
  size(600, 600);
  background(255);
  fill(255, 0, 0);
}

void draw()
{
  // Draw Balls
  background(255);
  for(int i = 0; i < positions.size(); i++) {
    Vector v = (Vector)positions.get(i);
    ellipse(v.x, v.y, 25, 25);
  }
  println(positions);
  println("");
}

void mousePressed()
{
  positions.add(new Vector(mouseX, mouseY));
}

class Vector
{
  float x, y;
  
  Vector(float x, float y)
  {
    this.x = x;
    this.y = y;
  }
  
  String toString()
  {
    return "[" + x + ", " + y + "]";
  }
}
