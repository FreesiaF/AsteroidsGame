Spaceship ship;
public void setup() 
{	
	size(500,500);
	background(0);
	ship = new Spaceship();
}
public void draw() 
{
	ship.move();
	ship.show();

}

