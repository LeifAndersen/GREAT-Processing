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
  for(int i = 0; i < positions.size(); i+=2) {
    ellipse((Integer)positions.get(i), (Integer)positions.get(i+1), 25, 25);
  }
  println(positions);
  println("");
}

void mousePressed()
{
  positions.add(mouseX);
  positions.add(mouseY);
}
