class Ghost{
	int x,y;
	PImage img;
	int timeForChangeDirection;
	int direction;
	int speed;

	boolean isDead;

	Ghost (int x, int y)
	{
		this.x = x;
		this.y = y;
		this.img = loadImage("ghost.png");
		this.initEyes();
		timeForChangeDirection = millis();
		direction = int(random(0, 4));
		speed = 5;
		isDead = false;
	}

	Ghost (int x, int y, PImage img)
	{
		this(x,y);
		this.img = img;
	}

	void initEyes()
	{
		
	}

	void draw()
	{
		if (!isDead) {
			image(img, x, y);
			if (millis() - timeForChangeDirection > 300) {
				timeForChangeDirection = millis();
				changeMoveDirection();	
			}	
		}
	}

	boolean isHitByMouse()
	{
		return false;
	}

	void changeMoveDirection()
	{
		direction = int(random(0, 4));
	}

	void dead()
	{
		isDead = true;
	}

	void move()
	{
		switch (direction) {
			//up
			case 0:
				y-=speed;
				if (y<0) {
					y=0;
					changeMoveDirection();
				}
				break;
			//down
			case 1:
				y+=speed;
				if (y>height - img.height) {
					y=height - img.height;
					changeMoveDirection();
				}
				break;
			//left
			case 2:
				x-=speed;
				if (x<0) {
					x=0;
					changeMoveDirection();
				}
				break;
			//right
			case 3:
				x+=speed;
				if (x>width - img.width) {
					x = width - img.width;
					changeMoveDirection();
				}
				break;
		}
	}
}