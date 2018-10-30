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
			ship.turn(-10);
		}
		if (keyCode == RIGHT)
		{
			ship.turn(10);
		}	
	}


}
