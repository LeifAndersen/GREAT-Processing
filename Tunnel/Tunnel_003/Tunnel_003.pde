float x, y, x2, y2;

float curAngle = 0;
float startAngle = 0;

float diam = 1;
float radius = 10;
float radiusINC = 0.4;

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

    x2 = (cos(curAngle) * (radius * 2)  ) + width/2;
    y2 = (sin(curAngle) * (radius * 2)  ) + height/2;

    /**
     x2 = (cos(curAngle) * (radius) + (radiusINC * (2*PI / (diam/radius)))  ) + width/2;
     y2 = (sin(curAngle) * (radius + (radiusINC * (2*PI / (diam/radius))))  ) + height/2;
     **/

    //  line(x, y, x+50, y+50);
    if (i % 6 == 0)
    {
      line(x, y, x2, y2);
    }
    ellipse(x, y, diam, diam);


    curAngle += diam/radius;
    radius += radiusINC;
    
    if(i % 80 == 0)
    {
      diam++; 
    }
  }

  radius = 10;
  startAngle += speed;
  curAngle = startAngle;
  
  diam = 1;
}

void keyPressed()
{
  if (key == 'a' || key == 'A') {
    speed += 0.01;
  } 
  else if (key == 's' || key =='S') {
    speed -= 0.01;
  }
}

