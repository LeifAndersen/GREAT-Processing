void draw(){
  println(frameRate);
  ellipse(mouseX, mouseY, 9, 9);
}

void setup(){
  frameRate(30); //Thirty frames each second
  //frameRate(12); //Twelve frames each second
  //frameRate(2);  //Two frames each second
  //frameRate(0.5); //One frame every two seconds
}

