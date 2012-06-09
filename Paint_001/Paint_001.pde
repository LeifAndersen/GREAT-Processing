void setup()
{
  size(640, 480);
  strokeWeight(12);
  smooth();
  background(255);
}

void draw()
{
  if(mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

