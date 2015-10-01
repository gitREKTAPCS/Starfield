NormalParticle normGuy = new NormalParticle();
void setup()
{
	size(512, 512);
}
void draw()
{
	normGuy.move();
	normGuy.show();
}
class NormalParticle
{
	double x, y, normTheta, normSpeed;
	int normRed, normGreen, normBlue;
	
	NormalParticle(){
		x=256;
		y=256;
		normTheta = Math.random() * (2*Math.PI);
		normSpeed=20;
		normRed =(int)(Math.random()*250);
		normGreen =(int)(Math.random()*250);
		normBlue =(int)(Math.random()*250);
	}

	void move(){
		x = x + (cos(normTheta)*normSpeed);
		y = y + (sin()*(normTheta)*normSpeed);
	}

	void show(){
		fill(normRed, normGreen, normBlue);
		ellipse(x, y, 10, 10);
	}
}
/*
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}
*/
