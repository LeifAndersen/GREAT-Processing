float x;
float y;

float curAngle = 0;
float startAngle = 0;

float diam = 10;
float radius = 10;

float speed = 0;

void setup()
{
  size(600, 600);
  fill(255);
  stroke(255);
  fill(255);
}

void draw()
{
  background(0);

  for (int i = 0; i < 800; i++)
  {
    x = (cos(curAngle) * radius) + width/2;
    y = (sin(curAngle) * radius) + height/2;
 
    ellipse(x, y, diam, diam);
    line(x, y, x+50, y+50);
    
    curAngle += diam/radius;
    radius += 0.6;
  }
  
  radius = 10;
  startAngle += speed;
  curAngle = startAngle;
}

void keyPressed()
{
  if(key == 'a' || key == 'A') {
    speed += 0.01;
  } else if (key == 's' || key =='S') {
    speed -= 0.01;
  }
}

