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
    ellipse(((Vector)positions.get(i)).x, ((Vector)positions.get(i)).y, 25, 25);
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
}
