float diameter = 50;
float offset = 50;

void setup()
{
  size(500, 500);
  ellipseMode(CORNER);
}

void draw()
{
  background(0);
  
  for(int i = 0; i < dist(0, 0, width, height) / diameter; i++)
 {
    ellipse(i * offset, i * offset, diameter, diameter);
    ellipse(width - i * offset, i * offset, diameter, diameter);
 } 
}

void mouseMoved()
{
  diameter = dist(0, 0, mouseX, mouseY) / 2;
  offset = sqrt((diameter * diameter) / 2) ;
}
