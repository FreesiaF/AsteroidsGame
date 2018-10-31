Spaceship ship;
Star[] stars;
public void setup() 
{	
	size(500,500);
	ship = new Spaceship();
	stars = new Star[500];
	for (int i = 0; i < stars.length; i ++)
	{
		stars[i]=new Star();
	}

}
public void draw() 
{
	background(0);
	for (int i = 0; i < stars.length; i ++)
	{
		stars[i].show();
	}
	ship.move();
	ship.show();

}

public void keyPressed()
{
	if (key == CODED){

		if (keyCode == UP)
		{
			ship.accelerate(2);
		}
		if (keyCode == LEFT)
		{
			ship.turn(-15);
		}
		if (keyCode == RIGHT)
		{
			ship.turn(15);
		}	
	}

	if (key =='h')
	{
		ship.setX((int)(Math.random()*500));
		ship.setY((int)(Math.random()*500));
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setPointDirection((int)(Math.random()*360));
	}


}
