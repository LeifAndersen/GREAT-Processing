void setup()
{
  size(600, 600);
  strokeWeight(1);
  smooth();
  background(255);
  stroke(0, 0, 0);
  fill(0, 128, 255);
  ellipse(300, 575, 500, 350); // Shirt
  fill(250, 210, 50);
  ellipse(300, 500, 200, 200); // Neck
  ellipse(50, 275, 50, 50); // Ears
  ellipse(550, 275, 50, 50);
  ellipse(300, 300, 500, 500); // Head
  fill(255, 255, 255);
  ellipse(200, 250, 100, 100); // Eyes
  ellipse(400, 250, 100, 100);
  fill(230, 190, 0);
  arc(300, 325, 100, 100, 1*PI/4, 3*PI/4); // Nose
  fill(255, 255, 255);
  arc(300, 425, 200, 100, 0, PI); // Mouth
  fill(0, 0, 255);
  ellipse(190, 260, 50, 50); // Eye Pupals
  ellipse(390, 260, 50, 50);
  fill(100, 50, 0);
  arc(300, 150, 500, 200, 3*PI/4, 9*PI/4); // Hair
  fill(0, 0, 0);
  rect(20, 250, 130, 10); // Glasses
  rect(250, 250, 100, 10);
  rect(450, 250, 130, 10);
}

void draw()
{
  
}
