float backdropx=0;
float backdropy=0;
PImage wood; 
PImage theQuack;
PImage[] images = new PImage[5];
int curImage = 1;
PImage toast;
PImage backdrop;
int x =0;
int y =0;
boolean collid;
float R = 0;
float G = 255;
float B = 0;
float Y = (820);
int X = 10;
float space = 60;
PFont fontA;

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
  collid = false;
  size (900, 800);
  background (0, 0, 210);
  fill (0);
  fontA = loadFont ("ComicSansMS-48.vlw");
  textFont (fontA, 32);
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

    if (backdropx < -800 && backdropy < -600)
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
    if (backdropx < -70 && backdropy < 350) {
      backdrop = loadImage("backdrop.jpg");
      toast = loadImage("toast.jpg");
      state = 3;
    }
    break;
  case 3:
    fill(0);
    imageMode(CORNER);
    background(255);
    image(backdrop, x, y);

    loadPixels();
    if (keyPressed)
    {
      if (key == 'w')
      {
        collid = (red(pixels[width/2+((height/2)-3)*width])  == 0 ||
          red(pixels[((width/2)+100)+((height/2)-3)*width])  == 0);
        if (!collid)
        {
          y=y+3;
        }
      }
      if (key == 's')
      {
        collid = (red(pixels[width/2+((height/2)+103)*width]) == 0 ||
          red(pixels[((width/2)+100)+((height/2)+103)*width])  == 0);
        if (!collid)

        {
          y=y-3;
        }
      }
      if (key == 'd')
      {
        collid = (red(pixels[((width/2)+103)+((height/2)+100)*width])  == 0 ||
          red(pixels[((width/2)+103)+((height/2))*width])  == 0);
        if (!collid)
        {
          x=x-3;
        }
      }
      if (key == 'a')
      { 
        collid = (red(pixels[(width/2)-3+((height/2)+100)*width]) == 0 ||
          red(pixels[(width/2)-3+((height/2))*width])  == 0);
        if (!collid)
        {
          x=x+3;
        }
      }
    }

    if (x < -280 && y < -150) {
      images[0] = loadImage("WHY.png");
      images[1]= loadImage("WheresButter.png");
      images[2]= loadImage("SCENE3.png");
      images[3] = loadImage("SCENE4.png");
      images[4] = loadImage ("Fin.png");
      curImage = 0;
      state = 4;
    }

    // draw toast
    imageMode(CORNER);
    image(toast, width/2, height/2, 100, 100);
    break;
  case 4:
    image(images[curImage], 0, 0);
    break;
  case 5:
    background (R, G, B);
    text ("Who made the game?", X, Y);
    text ("-executive producers: Leif, Josh, Tina", X, Y + space);
    text ("-opening cutscene: Bjorn, Zane the insane", X, Y + (space * 2)); 
    text ("-first part of the game: Michael, Zea, Bob, Pete, Pete, Pete", X, Y + (space * 3));
    text (" in the seccond level: Joe the moose", X, Y + ((space* 4) + 34));
    text ("-moose who was just off the right side of the screen", X, Y + (space * 4));
    text ("-character movement: Liam", X, Y + (space * 6));
    text ("-maze generation: Nick, Nick, Connor, Phill the Hampster", X, Y + (space * 7));
    text ("-end credits: Spencer, DA FAT PAINGUIN, Ashy, JD", X, Y + (space * 8));
    text ("Karl the Moose", X, Y + ((space * 9) + 34));
    text ("-Moose who was walking around the studio the whole time:", X, Y + (space * 9)); 
    text ("disagreement about bananas: slapper the walrush", X, Y + (( space * 11) + 34));
    text ("-Walrus who slapped gertrude the pidgeon over a ", X, Y + (space * 11));
    text ("-Collision detection: also Liam", X, Y + (space * 13));
    text ("-elephant who landed on gertrude the pigeon: Zumbolia", X, Y + (space * 14));
    text ("be sent to the hospital with a broken all of her: Koda", X, Y + ((space * 15) + 68));
    text ("Zumbolia the Elephant landed on her and caused her to", X, Y + ((space * 15) + 34));
    text ("-kangaroo who replaced Gertrude the pigeon after ", X, Y + (space * 15));
    text ("absolutely nothing: Harrison", X, Y + ((space * 17) + 34));
    text ("-person who was walking around the studio doing", X, Y + (space * 17));
    text ("-Toast: Toasty The Toast", X, Y + (space * 19));
    text ("Except the only one that was actually used.", X, Y + ((space * 20) + 34));
    text ("-No Toast was hurt during the making of the game", X, Y + (space * 20));
    text ("may he rest in peace", X, Y + (space * 22));
    Y-= 0.5;
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
    break;
  case 4:
    if (curImage == 4) {
      state = 5;
      backdropx=width/2;
      backdropy=height/2;
      return;
    }
    curImage++;
    break;
  }
}

