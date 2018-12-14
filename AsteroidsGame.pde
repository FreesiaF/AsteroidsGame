Spaceship ship;
Star[] stars;
ArrayList <Bullet> bullets;
ArrayList <Asteroid> asteroids; 
ArrayList <SmallAsteroid> tinyrock;
ArrayList <MidAsteroid> medAsteroid;
ArrayList <Spaceship> lives;
int score = 0;
boolean gameOver = false;
Asteroid gameOverA;
public void setup() 
{	
	size(500,500);
	ship = new Spaceship();
	asteroids = new ArrayList <Asteroid>();
	bullets = new ArrayList <Bullet>();
	tinyrock = new ArrayList <SmallAsteroid>();
	medAsteroid = new ArrayList <MidAsteroid>();
	lives = new ArrayList <Spaceship>();
	gameOverA = new Asteroid();
	gameOverA.setX(170);
	gameOverA.setY(190);
	gameOverA.setPointDirection(-100);

	for (int i= 0; i < 3; i++)
	{

		lives.add(new Spaceship());

		lives.get(i).setX(50+20*i);
		lives.get(i).setY(80);
		lives.get(i).setPointDirection(-90);
		
	}

	for(int i= 0; i < 8; i++)
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

	for (int i = 0; i < bullets.size(); i++)
	{
		bullets.get(i).move();
		bullets.get(i).show();	
	}
	
	for (int i = 0; i < asteroids.size(); i++)
	{
		asteroids.get(i).move();
		asteroids.get(i).show();
		for (int x = 0; x < bullets.size(); x++)
		{
			if (dist((bullets.get(x).getX()),(bullets.get(x).getY()),(asteroids.get(i).getX()),(asteroids.get(i).getY())) < 10)
			{
				score = score + 20;
				bullets.remove(x);
				medAsteroid.add(new MidAsteroid(asteroids.get(i)));
				medAsteroid.add(new MidAsteroid(asteroids.get(i)));
				asteroids.remove(i);
				break;	
			}	
		}	
	}
	for (int i = 0; i < asteroids.size(); i++)
	{
		for (int x = 0; x < lives.size(); x++)
		{
			if ((asteroids.size() > 0) && dist((ship.getX()),(ship.getY()),(asteroids.get(i).getX()),(asteroids.get(i).getY())) < 10)
			{
				ship.setX(250);
				ship.setY(250);
				lives.remove(x);
				break;
			}
		}		
	}
	


	for (int i = 0; i < medAsteroid.size(); i++)
	{
		medAsteroid.get(i).move();
		medAsteroid.get(i).show();
		for (int x = 0; x < bullets.size(); x++)
		{
			if (dist((bullets.get(x).getX()),(bullets.get(x).getY()),(medAsteroid.get(i).getX()),(medAsteroid.get(i).getY())) < 10)
			{
				score = score + 50;
				bullets.remove(x);
				tinyrock.add(new SmallAsteroid(medAsteroid.get(i)));
				tinyrock.add(new SmallAsteroid(medAsteroid.get(i)));
				medAsteroid.remove(i);
				break;
			}	
		}	
	}
	for (int i = 0; i < medAsteroid.size(); i++)
	{
		for (int x = 0; x < lives.size(); x++)
		{
			if ((medAsteroid.size() > 0) && (dist((ship.getX()),(ship.getY()),(medAsteroid.get(i).getX()),(medAsteroid.get(i).getY())) < 10))
			{
				ship.setX(250);
				ship.setY(250);
				lives.remove(x);
				break;			
			}	
		}
	}	

	for (int i = 0; i < tinyrock.size(); i++)
	{
		tinyrock.get(i).move();
		tinyrock.get(i).show();	
		for (int x = 0; x < bullets.size(); x++)
		{
			if (dist((bullets.get(x).getX()),(bullets.get(x).getY()),(tinyrock.get(i).getX()),(tinyrock.get(i).getY())) < 10)
			{
				score = score + 100;
				bullets.remove(x);
				tinyrock.remove(i);
				break;	
			}				
		}

		
	}
	for (int i = 0; i < tinyrock.size(); i++)
	{
		for (int x = 0; x < lives.size(); x++)
		{
			if ((tinyrock.size() > 0) && dist((ship.getX()),(ship.getY()),(tinyrock.get(i).getX()),(tinyrock.get(i).getY())) < 10)
			{
				ship.setX(250);
				ship.setY(250);
				lives.remove(x);
				break;			
			}	
		}
	
	}


	ship.move();
	ship.show();
	textSize(20);
	text(score, 45,50);

	for (int i = 0; i < lives.size(); i++)
	{
		lives.get(i).show();
			
	}
	if (lives.size() == 0)
		gameOver = true;

	if (gameOver == true)
	{
		
		background(0);
		for (int i = 0; i < stars.length; i ++)
		{	
			stars[i].show();
		}

		fill(10,200,10);
		textAlign(CENTER);
		textSize(40);
		text("G    ME  OVER", 250,200);
		gameOverA.show();
		fill(210,190,190);
		textSize(15);
		text("SCORE: " + score, 250,275);
	}
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
