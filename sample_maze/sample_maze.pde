                                                                     
                                                                     
                                                                     
                                             
int x, y, px, py, speed;

void setup() {
	x = 40; //character (x, y)
	y = 35;

	speed = 10; //character move speed

	size(570 , 600); //window size
}

void draw() {
	background(161, 139, 72);
	fill(70, 190, 0);
	stroke(40, 120, 0);
	rect(90, 0, 30, 400);
	rect(210, 200, 30, 400);
	rect(330, 0, 30, 400);
	rect(450, 200, 30, 400);

	fill(190, 70, 0);
	stroke(120, 40, 0);
	ellipse(x, y, 50, 50);
}

void keyPressed() {

	if(y < 25 || x < 25 || x > width - 25 || y > height - 25 ||
		(x > 65 && y < 425 && x < 145) ||
		(x > 185 && y > 175 && x < 265) ||
		(x > 305 && y < 425 && x < 385) ||
		(x > 425 && y > 175 && x < 505)) {
		x = px;
		y = py;
	}
	else {
		py = y;
		px = x;

		if(key == 'w' || key == 'W')
			y -= speed;
		if(key == 'a' || key == 'A')
			x -= speed;
		if(key == 's' || key == 'S')
			y += speed;
		if(key == 'd' || key == 'D')
			x += speed;
	}
}
