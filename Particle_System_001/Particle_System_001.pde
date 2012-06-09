void setup()
{
  Particle p = new Particle(5, 5, 5);
  p.draw();
}

void draw()
{
  
}

class Particle
{
  float x, y, radius;
  
  Particle(float x, float y, float radius)
  {
    
  }
  
  void draw()
  {
    stroke(0, 0, 0);
    fill(0, 255, 255);
    ellipse(x + radius, y + radius, radius*2, radius*2);
  }
}
