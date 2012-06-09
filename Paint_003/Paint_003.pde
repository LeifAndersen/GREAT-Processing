void setup()
{
  size(640, 480);
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
    } else if(mouseY > 400) {
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
      } else {
        stroke(255);
      }
    } else {
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
  }
}

void drawCanvas()
{
  stroke(0, 0, 0);
  textFont(loadFont("FFScala-32.vlw"));
  text("New", 100, 40);
  fill(0, 0, 0);
  rect(0, 400, 100, 80);
  fill(255, 0, 0);
  rect(100, 400, 100, 80);
  fill(0, 255, 0);
  rect(200, 400, 100, 80);
  fill(0, 0, 255);
  rect(300, 400, 100, 80);
  fill(255, 255, 0);
  rect(400, 400, 100, 80);
  fill(255, 0, 255);
  rect(500, 400, 100, 80);
  fill(255, 255, 255);
  rect(600, 400, 40, 80);
}
