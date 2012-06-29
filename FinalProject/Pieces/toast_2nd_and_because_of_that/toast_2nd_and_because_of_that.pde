float backdropx;
float backdropy;
PImage toast;
PImage backdrop;
void setup()
{
  imageMode(CENTER);
  size(1000,750);
  background(255);
  backdrop=loadImage("gamemaze.png");
  toast=loadImage("toast.png");
  backdropx=width/2;
  backdropy=height/2;
}

void draw()
{
  imageMode(CENTER);
  background(255);
  image(backdrop,backdropx,backdropy,width,height);
  image(toast,182,521,40,55);
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
}
void keyPressed()
{
  if(key == 'k')
  {
    println(mouseX);
    println(mouseY);
  }
}
