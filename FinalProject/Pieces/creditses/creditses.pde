//CREDIT ROLL!
float R = 0;
float G = 255;
float B = 0;
float Y = (820);
int X = 10;
float space = 60;
PFont fontA;
void setup()
{
 size (900,800);
 background (0,0,210);
 fill (0);
fontA = loadFont ("ComicSansMS-48.vlw");
textFont (fontA, 32);
}
void draw()
{
  background (R,G,B);
  text ("Who made the game?", X, Y);
  text ("-executive producers: Lief, Josh, Tina", X, Y + space);
  text ("-opening cutscene: Bjorn, Zane the insane", X, Y + (space * 2)); 
  text ("-first part of the game: Michael, Zea, Bob, Pete, Pete, Pete", X, Y + (space * 3));
  text (" in the seccond level: Joe the moose", X, Y + ((space* 4) + 34));
  text ("-moose who was just off the right side of the screen", X, Y + (space * 4));
  text ("-character movement: Liam", X, Y + (space * 6));
  text ("-maze generation: Nick, Nick, Connor, Phill the Hampster",X, Y + (space * 7));
  text ("-end credits: Spencer, DA FAT PAINGUIN, Ashy, JD", X, Y + (space * 8));
  text ("Karl the Moose", X, Y + ((space * 9) + 34));
  text ("-Moose who was walking around the studio the whole time:", X, Y + (space * 9)); 
  text ("disagreement about bananas: slapper the walrush", X, Y + (( space * 11) + 34));
  text ("-Walrus who slapped gertrude the pidgeon over a ", X, Y + (space * 11));
  text ("-Collision detection: also Liam", X, Y + (space * 13));
  text ("-elephant who landed on gertrude the pigeon: Zumbolia", X,  Y + (space * 14));
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
}

void mousePressed()
{
  ellipse (mouseX, mouseY, 10,10);
}
