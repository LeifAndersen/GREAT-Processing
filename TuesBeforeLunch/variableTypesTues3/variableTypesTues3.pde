int radius = 10;

float floatX = -radius;
float floatSpeed = 0.5;

int intX = -radius;
int intSpeed = 1;

void setup(){
  size(240, 120);
  smooth();
  ellipseMode(RADIUS);
}

void draw(){
  background(0);
  
  //challenge:  can you get circle on bottom to be SLOWER than circle on top?

  //my ellipse that uses float on top
  floatX = floatX + floatSpeed; //increase value of x
  ellipse(floatX, 30, radius, radius);
  
 //my ellipse that uses int on bottom
  intX = intX + intSpeed;
  ellipse(intX, 90, radius, radius);
}
