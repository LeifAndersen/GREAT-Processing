void setup() {
  size(480, 120);
  smooth(); //ask kids to figure out what this does
}

void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}

//challenge:  can you change this code to be lines or other shapes?
