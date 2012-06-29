int backdropx=0;
int backdropy=0;
PImage wood; 
PImage theQuack;
void setup()
{
  size(1000, 750);
  wood= loadImage("free_hires_wood_texture_5[1].jpg");
  theQuack= loadImage("theQuack.jpg");
}
void draw()
{
  println("backdrop x is");
  println(backdropy);
  if (keyPressed)
  {
    if (backdropx < 0)
    {
      if (key=='a') //left
      {
        backdropx +=3;
      }
    }

    if (backdropx > -1000) {
      if (key=='d') //right
      {
        backdropx -=3;
      }
    }

    if (backdropy <-3) {
      if (key=='w') //up
      {
        backdropy +=3;
      }
    }

    if (backdropy >-747) {
      if (key=='s') //down
      {
        backdropy -=3;
      }
    }
  }




  background(0);
  image(wood, backdropx, backdropy, 1000, 750);
  image(wood, backdropx+1000, backdropy, 1000, 750);
  image(wood, backdropx+1000, backdropy+750, 1000, 750);
  image(wood, backdropx, backdropy+750, 1000, 750);
  toast();
}

void toast()
{
  noStroke();
  fill(108, 76, 4);
  rect(43, 98, 210, 210);
  ellipse(90, 90, 140, 140);
  ellipse(200, 90, 140, 140);
  fill(250, 240, 124);
  rect(47, 100, 200, 200);
  ellipse(90, 90, 130, 130);
  ellipse(200, 90, 130, 130);
  fill(0);
  arc(150, 200, 100, 100, 0, 3.2);
  fill(255);
  ellipse(100, 110, 50, 50);
  ellipse(200, 110, 50, 50);
  fill(0);
  ellipse(100, 110, 20, 20);
  ellipse(200, 110, 20, 20);
  image(theQuack, backdropx+950, backdropy+700, 500, 500);
  strokeWeight(9);
  {
  }
}



