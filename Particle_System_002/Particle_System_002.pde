Particle[] p;

void setup()
{
  size(600,600);
  strokeWeight(2);
  smooth();
  background(255);
  stroke(0, 0, 0);
  p = new Particle[5];
  p[0] = new Particle(20, 12);
  p[1] = new Particle(15, 11);
  p[2] = new Particle(10, 10);
  p[3] = new Particle(5, 9);
  p[4] = new Particle(2, 8);
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
  float maxSpeed;
  
  Particle(float radius)
  {
    this.x = 0;
    this.y = 0;
    this.radius = radius;
    this.maxSpeed = 5;
  }
  
  Particle(float radius, float maxSpeed)
  {
    this.x = 0;
    this.y = 0;
    this.radius = radius;
    this.maxSpeed = maxSpeed;
  }
  
  void draw()
  {
    stroke(0, 0, 0);
    fill(0, 255, 255);
    ellipse(x + radius, y + radius, radius*2, radius*2);
  }
  
  void update()
  {
    if(x < mouseX) {
      x += maxSpeed;
    } else {
      x -= maxSpeed;
    }
    
    if(y < mouseY) {
      y += maxSpeed;
    } else {
      y -= maxSpeed;
    }
  }
}
