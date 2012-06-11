size(200,200);
//initializing shapes to use center points
rectMode(CENTER);


//neck, head, eyes, nose, mouth
line(100,90,100,100);
ellipse(100,70,40,50);
ellipse(92,68,5,5);
ellipse(107,68,5,5);
point(92,68);
point(107,68);
triangle(100,74,103,76,98,76);
ellipse(100,83,12,4);

//body
rect(100,120,15,40);

//hair
ellipse(81,80,6,52); 
ellipse(119,80,6,52);
ellipse(100,50,36,12);

//arms
line(70,110,90,120);
line(110,120,130,120);

//skirt
quad(92,140,109,140,120,170,75,170);

//legs
line(92,170,90,190);
line(108,170,110,190);
