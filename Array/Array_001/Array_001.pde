int[] positions = new int[20];
int index = 0;

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
  for(int i = 0; i < positions.length; i+=2) {
    ellipse(positions[i], positions[i+1], 25, 25);
  }
  println(positions);
  println("");
}

void mousePressed()
{
    positions[index++] = mouseX; // positions[index] = mouseX; index = index + 1;
    positions[index++] = mouseY; // positions[index] = mouseY; index = index + 1;
    index = index % positions.length;
}
