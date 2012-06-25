// Animated Circle that flips if it fills 

float angle = -PI/2;
boolean filling = true;

void setup()
{
  size(640, 640);
  background(255);
  frameRate(30);
}

void draw()
{
  background(255);

  fill(0);

  if (filling)
  {
    arc(width/2, height/2, width/2, height/2, -PI/2, angle);
  }
  else
  {
    arc(width/2, height/2, width/2, height/2, angle, 1.5*PI);
  }

  angle += PI/64;
  
  if(angle > 1.5*PI)
  {
     filling = !filling; 
     angle = -PI/2;
     print("flip");
  }
  
  println(angle);
}

