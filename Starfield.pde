Particle[] partycles = new Particle[2000];

void setup()
{
	size(512, 512);

	for(int i = 0; i < partycles.length; i++){
		if(i==0){
			 partycles[i]= new OddballParticle();
		}
		else{
			partycles[i] = new NormalParticle();
		}
	}
}
void draw()
{
	background(0);
	for(int j = 0; j < partycles.length; j++){
		partycles[j].move();
		partycles[j].show();
	}
	

}
class NormalParticle implements Particle
{
	double x, y, normTheta, normSpeed;
	int normRed, normGreen, normBlue;
	
	NormalParticle(){
		x=256;
		y=256;
		normTheta = Math.random() * (2*Math.PI);
		normSpeed=10;
		normRed =(int)(Math.random()*250);
		normGreen =(int)(Math.random()*250);
		normBlue =(int)(Math.random()*250);
	}

	public void move(){
	if((x>12 && x<500) && (y>12 && y<500)){
		x = x + (Math.cos(normTheta)*normSpeed);
		y = y + (Math.sin(normTheta)*normSpeed);
		}
		else{
			x = 256;
			y = 256;
		}
	}

	public void show(){
		fill(normRed, normGreen, normBlue);
		ellipse((float)x, (float)y, 10, 10);
	}
}

interface Particle
{
	public void move();
	public void show(); 
		
}
class OddballParticle implements Particle
{
	double x, y, oddTheta, oddSpeed;
	int oddRed, oddGreeen, oddBlue;
	
	OddballParticle(){
		x=256;
		y=256;
		oddTheta = Math.random() * (2*Math.PI);
		oddSpeed=10;
		oddRed =(int)(Math.random()*250);
		oddGreeen =(int)(Math.random()*250);
		oddBlue =(int)(Math.random()*250);
	}

public void move(){
	if((x>12 && x<500) && (y>12 && y<500)){
		x = x + (Math.cos(oddTheta)*oddSpeed);
		y = y + (Math.sin(oddTheta)*oddSpeed);
		}
		else{
			x = 256;
			y = 256;
			oddTheta = Math.random() * (2*Math.PI);
			oddSpeed=10;
			oddRed =(int)(Math.random()*250);
			oddGreeen =(int)(Math.random()*250);
			oddBlue =(int)(Math.random()*250);

		}
	}

	public void show(){
		fill(oddRed, oddGreeen, oddBlue);
		ellipse((float)x, (float)y, 100, 100);
	}

}
class JumboParticle //uses inheritance
{
	//your code here
}

