Spaceship ship;
Star[] stars;
ArrayList <Asteroid> asteroids; 
public void setup() 
{	
	size(500,500);
	ship = new Spaceship();
	asteroids = new ArrayList <Asteroid>();
	for(int i= 0; i < 6; i++)
	{
		asteroids.add(new Asteroid());
	}

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
	
	for (int i = 0; i < asteroids.size(); i++)
	{
		asteroids.get(i).move();
		asteroids.get(i).show();
		float d = dist((ship.getX()),(ship.getY()),(asteroids.get(i).getX()),(asteroids.get(i).getY())) ;
		if (d<10)
			asteroids.remove(i);
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
		if(keyCode == DOWN)
		{
			ship.setX((int)(Math.random()*500));
			ship.setY((int)(Math.random()*500));
			ship.setDirectionX(0);
			ship.setDirectionY(0);
			ship.setPointDirection((int)(Math.random()*360));
		}
	}

}
