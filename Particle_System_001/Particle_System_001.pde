Particle[] p;

void setup()
{
  size(600,600);
  strokeWeight(2);
  smooth();
  background(255);
  stroke(0, 0, 0);
  p = new Particle[5];
  p[0] = new Particle(20);
  p[1] = new Particle(15);
  p[2] = new Particle(10);
  p[3] = new Particle(5);
  p[4] = new Particle(2);
}

void draw()
{
  background(255);
  for(int i = 0; i < 5; i++) {
    p[i].update();
    p[i].draw();
  }
}

class Particle
{
  float x, y, radius;
  
  Particle(float x, float y)
  {
    this.x = x;
    this.y = y;
    this.radius = 10;
  }
  
  Particle(float x, float y, float radius)
  {
    this.x = x;
    this.y = y;
    this.radius = radius;
  }
  
  Particle(float radius)
  {
    this.x = 0;
    this.y = 0;
    this.radius = radius;
  }
  
  void draw()
  {
    stroke(0, 0, 0);
    fill(0, 255, 255);
    ellipse(x + radius, y + radius, radius*2, radius*2);
  }
  
  void update()
  {
    x = pmouseX;
    y = pmouseY;
  }
}
