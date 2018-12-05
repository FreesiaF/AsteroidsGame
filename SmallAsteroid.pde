class SmallAsteroid extends Floater
{
	public SmallAsteroid(Asteroid asteroids)
	{
		corners = 10;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -8;
		yCorners[0] = -8;
		xCorners[1] = -4;
		yCorners[1] = -4;
		xCorners[2] = 0;
		yCorners[2] = -8;
		xCorners[3] = 2;
		yCorners[3] = -4;
		xCorners[4] = 4;
		yCorners[4] = 0;
		xCorners[5] = 8;
		yCorners[5] = 4;
		xCorners[6] = 0;
		yCorners[6] = 4;
		xCorners[7] = -2;
		yCorners[7] = 8;
		xCorners[8] = -4;
		yCorners[8] = 4;
		xCorners[9] = -8;
		yCorners[9] =2;

		myCenterX = asteroids.getX();
		myCenterY = asteroids.getY();
		myDirectionX = Math.random()* 8 -4;
		myDirectionY = Math.random()* 8 -4;
		myColor = color(210,190,190);
		myPointDirection = 0;

	}
	
	public void move()
	{
		turn(((int)(Math.random()*5)));
		super.move();
	}


	public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return (double)myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return (double)myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return (double)myPointDirection;}
}