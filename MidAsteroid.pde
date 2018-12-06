class MidAsteroid extends Floater
{
	public MidAsteroid(Asteroid asteroids)
	{
		corners = 10;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -8*2;
		yCorners[0] = -8*2;
		xCorners[1] = -4*2;
		yCorners[1] = -4*2;
		xCorners[2] = 0;
		yCorners[2] = -8*2;
		xCorners[3] = 2*2;
		yCorners[3] = -4*2;
		xCorners[4] = 4*2;
		yCorners[4] = 0*2;
		xCorners[5] = 8*2;
		yCorners[5] = 4*2;
		xCorners[6] = 0*2;
		yCorners[6] = 4*2;
		xCorners[7] = -2*2;
		yCorners[7] = 8*2;
		xCorners[8] = -4*2;
		yCorners[8] = 4*2;
		xCorners[9] = -8*2;
		yCorners[9] =2*2;

		myCenterX = asteroids.getX();
		myCenterY = asteroids.getY();
		myDirectionX = Math.random()* 6 -3;
		myDirectionY = Math.random()* 6 -3;
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