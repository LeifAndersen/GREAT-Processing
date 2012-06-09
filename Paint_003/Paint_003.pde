void setup()
{
  size(800, 800);
  strokeWeight(12);
  smooth();
  background(255);
  stroke(0, 0, 0);
  drawCanvas();
}

void draw()
{
  if(mousePressed) {
    if(mouseY < 100) {
      if(mouseX < 320) {
        background(255);
        stroke(0, 0, 0);
        drawCanvas();
      } else {
        save("MyImage.png");
      }
    } else if(mouseY > 700) {
      if(mouseX < 100) {
        stroke(0, 0, 0);
      } else if(mouseX < 200) {
        stroke(255, 0, 0);
      } else if(mouseX < 300) {
        stroke(0, 255, 0);
      } else if(mouseX < 400) {
        stroke(0, 0, 255);
      } else if(mouseX < 500) {
        stroke(255, 255, 0);
      } else if(mouseX < 600) {
        stroke(255, 0, 255);
      } else if(mouseX < 700) {
        stroke(0, 255, 255);
      } else {
        stroke(255);
      }
    } else if(mouseY < 650) {
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
  }
}

void drawCanvas()
{
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(0, 700, 100, 100);
  fill(255, 0, 0);
  rect(100, 700, 100, 100);
  fill(0, 255, 0);
  rect(200, 700, 100, 100);
  fill(0, 0, 255);
  rect(300, 700, 100, 100);
  fill(255, 255, 0);
  rect(400, 700, 100, 100);
  fill(255, 0, 255);
  rect(500, 700, 100, 100);
  fill(0, 255, 255);
  rect(600, 700, 100, 100);
  fill(255, 255, 255);
  rect(700, 700, 100, 100);
}
