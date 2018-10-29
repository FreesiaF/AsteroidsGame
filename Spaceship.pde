class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 4;
    	int[] xS = {-8,-2,-8,16};
    	int[] yS = {8,0,8,0};
    	xCorners = xS;
    	yCorners = yS;
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
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

