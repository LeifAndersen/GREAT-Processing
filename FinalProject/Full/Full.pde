float backdropx=0;
float backdropy=0;
PImage wood; 
PImage theQuack;
PImage[] images = new PImage[5];
int curImage = 1;
PImage toast;
PImage backdrop;

int state = 0;

void setup()
{
  size(1000, 750);
  wood= loadImage("free_hires_wood_texture_5[1].jpg");
  theQuack= loadImage("theQuack.jpg");
  images[0] = loadImage("toastyscene1.png");
  images[1]= loadImage("toastyscene2.png");
  images[2]= loadImage("toastyscene3.png");
  images[3] = loadImage("toastyscene4.png");
  images[4] = loadImage ("toastyscene6.png");
  backdrop=loadImage("gamemaze.png");
  toast=loadImage("toast.png");
  background(255);
}

void draw()
{
  switch(state) {
  case 0:
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

    if (backdropx < -900 && backdropy < -700)
    {
      state = 1;
    }

    background(0);
    image(wood, backdropx, backdropy, 1000, 750);
    image(wood, backdropx+1000, backdropy, 1000, 750);
    image(wood, backdropx+1000, backdropy+750, 1000, 750);
    image(wood, backdropx, backdropy+750, 1000, 750);
    toast();
    break;
  case 1:
    image(images[curImage], 0, 0);
    break;
  case 2:
    imageMode(CENTER);
    background(255);
    image(backdrop, backdropx, backdropy, width, height);
    image(toast, 182, 521, 40, 55);
    if (keyPressed && key == 'w')
    {
      backdropy=backdropy+1;
    }
    if (keyPressed && key == 's')
    {
      backdropy=backdropy-1;
    }
    if (keyPressed && key == 'd')
    {
      backdropx=backdropx-1;
    }
    if (keyPressed && key == 'a')
    {
      backdropx=backdropx+1;
    }
    break;
  }
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
}

void mousePressed()
{
  switch(state) {
  case 1:
    if (curImage == 4) {
      state = 2;
      backdropx=width/2;
      backdropy=height/2;
      return;
    }
    curImage++;
  }
}

