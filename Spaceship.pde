class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 5;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
        xCorners[0] = -8;
        yCorners[0]= -8;
        xCorners[1] = 16;
        yCorners[1]= 0;
        xCorners[2] = -8;
        yCorners[2]= 8;
        xCorners[3] = -4;
        yCorners[3]= 4;
        xCorners[4]= -4;
        yCorners[4]= -4;
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
        myColor = color(10,200,10);
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

