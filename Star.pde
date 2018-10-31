class Star //note that this class does NOT extend Floater
{
	float myX, myY;

	public Star()
  {
  	myX = (float)Math.random()*500;
  	myY = (float)Math.random()*500;
  }

  public void show()
  {
  	stroke(230);
  	ellipse(myX,myY,1,1);
  }
}
