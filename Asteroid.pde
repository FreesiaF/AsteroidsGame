
class Asteroid extends Floater
{
	public Asteroid()
	{
		corners = 10;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -16;
		yCorners[0] = -16;
		xCorners[1] = -8;
		yCorners[1] = -8;
		xCorners[2] = 0;
		yCorners[2] = -16;
		xCorners[3] = 4;
		yCorners[3] = -8;
		xCorners[4] = 8;
		yCorners[4] = 0;
		xCorners[5] = 16;
		yCorners[5] = 8;
		xCorners[6] = 0;
		yCorners[6] = 8;
		xCorners[7] = -4;
		yCorners[7] = 16;
		xCorners[8] = -8;
		yCorners[8] = 8;
		xCorners[9] = -16;
		yCorners[9] = 4;

		myCenterX = Math.random()* 500;
		myCenterY = Math.random()* 500;
		myDirectionX = Math.random()* 3;
		myDirectionY = Math.random()* 3;
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