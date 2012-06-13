void setup()
{
  size(600, 600);
  strokeWeight(1);
  smooth();
  background(255);
  noLoop();
}

void draw()
{
  stroke(0, 0, 0);
  fill(0, 128, 255);
  ellipse(width/2, height*23/24, width*5/6, height*7/12); // Shirt
  fill(250, 210, 50);
  ellipse(width/2, height*5/6, width/3, height/3); // Neck
  ellipse(width/12, height*11/24, width/12, height/12); // Ears
  ellipse(width*11/12, height*11/24, width/12, height/12);
  ellipse(width/2, height/2, width*5/6, height*5/6); // Head
  fill(255, 255, 255);
  ellipse(width/3, height*5/12, width/6, height/6); // Eyes
  ellipse(width*2/3, height*5/12, width/6, height/6);
  fill(230, 190, 0);
  arc(width/2, height*13/24, width/6, height/6, 1*PI/4, 3*PI/4); // Nose
  fill(255, 255, 255);
  arc(width/2, height*17/24, width/3, height/6, 0, PI); // Mouth
  fill(0, 0, 255);
  ellipse(width*19/60, height*13/30, width/12, width/12); // Eye Pupals
  ellipse(width*39/60, height*13/30, width/12, width/12);
  fill(100, 50, 0);
  arc(width/2, height*3/12, width*5/6, height/3, 3*PI/4, 9*PI/4); // Hair
  fill(0, 0, 0);
  rect(width*1/30, height*5/12, width*13/60, height/60); // Glasses
  rect(width*5/12, height*5/12, width/6, height/60);
  rect(width*9/12, height*5/12, width*13/60, height/60);
}
