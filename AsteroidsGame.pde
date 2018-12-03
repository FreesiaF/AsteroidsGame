Spaceship ship;
Star[] stars;
ArrayList <Bullet> bullets;
ArrayList <Asteroid> asteroids; 
public void setup() 
{	
	size(500,500);
	ship = new Spaceship();
	asteroids = new ArrayList <Asteroid>();
	bullets = new ArrayList <Bullet>();

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
		for (int x = 0; x < bullets.size(); x++){
			if (dist((bullets.get(x).getX()),(bullets.get(x).getY()),(asteroids.get(x).getX()),(asteroids.get(x).getY())) < 10)
			{
				asteroids.remove(x);
				bullets.remove(x);
				break;	
			}			
		}

		
		float d = dist((ship.getX()),(ship.getY()),(asteroids.get(i).getX()),(asteroids.get(i).getY())) ;
		if (d<10)
			asteroids.remove(i);
	}
	
	for (int i = 0; i < bullets.size(); i++)
	{
		bullets.get(i).move();
		bullets.get(i).show();	
	
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
	if (key == 'v')
	{

		bullets.add(new Bullet(ship));

	}

}
