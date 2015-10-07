Particle[] partycles = new Particle[1000];

void setup()
{
	size(512, 512);

	for(int i = 0; i < partycles.length; i++){
		if(i==0){
			 partycles[i]= new OddballParticle();
		}
		else if(i==1){
			partycles[i] = new JumboParticle();
		}
		else{
			partycles[i] = new NormalParticle();
		}
	}
}

void draw()
{
	background(123);
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
	public double x = 256;
	public double y = 256;
		
}
class OddballParticle implements Particle
{
	double x, y;
	int oddRed, oddGreeen, oddBlue;
	OddballParticle(){
		x=256;
		y=256;
		oddRed =(int)(Math.random()*250);
		oddGreeen =(int)(Math.random()*250);
		oddBlue =(int)(Math.random()*250);
	}

public void move(){
		x = (double)(Math.random()*400);
		y = (double)(Math.random()*400);
	}

	public void show(){
		fill(oddRed, oddGreeen, oddBlue);
		ellipse((float)x, (float)y, 51, 51);
	}

}
class JumboParticle implements Particle
{
	double x, y, jumboTheta, jumboSpeed;
	int jumboRed, jumboGreen,jumboBlue;
	
	JumboParticle(){
		x=256;
		y=256;
		jumboTheta = Math.random() * (2*Math.PI);
		jumboSpeed=5;
		jumboRed =(int)(Math.random()*250);
		jumboGreen =(int)(Math.random()*250);
		jumboBlue =(int)(Math.random()*250);
	}

	public void move(){
	if((x>-30 && x<542) && (y>-30 && y<542)){
		x = x + (Math.cos(jumboTheta)*jumboSpeed);
		y = y + (Math.sin(jumboTheta)*jumboSpeed);
		}
		else{
			x = 256;
			y = 256;
			jumboTheta = Math.random() * (2*Math.PI);
			jumboSpeed=5;

		}
	}

	public void show(){
		fill(jumboRed, jumboGreen, jumboBlue);
		ellipse((float)x, (float)y, 100, 100);
	}
}

