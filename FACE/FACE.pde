// Drawing Face

void setup()
{
  size(400, 400);
  background(255);

  ellipseMode(CENTER);
  rectMode(CENTER);

  noLoop();
}

void draw()
{
  fill(0,0,255);
  rect(width/2, height, width/2, height/2);                          // body
  
  noStroke();
  fill(255,0,0);
  ellipse(width/2, height/2.5, width/2, height/2);                   // Hair
  
  fill(245,228,168);
  ellipse(width/4, height/2, width/16, height/8);                    // Ears
  ellipse(width - width/4, height/2, width/16, height/8);

  ellipse(width/2, height/2, width/2, height/2);                     // BASE
  
  //fill(255,255,255);
  fill(255);
  ellipse(width/2.5, height/2.5, width/8, height/8);
  ellipse(width - width/2.5, height/2.5, width/8, height/8);         // Eyeballs
  
  fill(0,0,0);
  ellipse(width/2.5, height/2.5, width/16, height/16);
  ellipse(width - width/2.5, height/2.5, width/16, height/16);       // Puplis 

  fill(255, 0, 0);                                                   // Beard
  triangle(width/3, height - height/3.1, width - width/3, height - height/3.1, width/2, height - height/16);
  
  stroke(0);
  strokeWeight(4); 
  noFill();
  arc(width/2, height/2, width/3, height/3, 0, PI);                  // Mouth
  
}

