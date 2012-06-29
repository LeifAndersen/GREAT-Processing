PGraphics pg;

void setup()
{
  size(400, 400);
  pg = createGraphics(400, 400);
}

void draw()
{
  background(255);
    float myDist = dist(width/2, height/2, mouseX, mouseY);

  ellipse(width/2 + ( ((mouseX - width/2)/myDist) * 30), 
          height/2 + ( ((mouseY - height/2)/myDist) * 30 ),
          10,10); 
  ellipse(width/2, height/2, 60, 60);
   

}
