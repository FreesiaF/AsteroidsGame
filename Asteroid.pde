
class Asteroid extends Floater
{
	private int rotation = (int)(Math.random()*10)-5;
	public Asteroid()
	{
		corners = 10;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -8*3;
		yCorners[0] = -8*3;
		xCorners[1] = -4*3;
		yCorners[1] = -4*3;
		xCorners[2] = 0;
		yCorners[2] = -8*3;
		xCorners[3] = 2*3;
		yCorners[3] = -4*3;
		xCorners[4] = 4*3;
		yCorners[4] = 0;
		xCorners[5] = 8*3;
		yCorners[5] = 4*3;
		xCorners[6] = 0;
		yCorners[6] = 4*3;
		xCorners[7] = -2*3;
		yCorners[7] = 8*3;
		xCorners[8] = -4*3;
		yCorners[8] = 4*3;
		xCorners[9] = -8*3;
		yCorners[9] =2*3;

		myCenterX = Math.random()* 500;
		myCenterY = Math.random()* 500;
		myDirectionX = Math.random()* 2 -1;
		myDirectionY = Math.random()* 2 -1;
		myColor = color(210,190,190);
		myPointDirection = 0;

	}
	
	public void move()
	{
		turn(rotation);
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