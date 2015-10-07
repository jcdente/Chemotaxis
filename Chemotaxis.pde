bacteria[] colony ;
//declare bacteria variables here   
 void setup()   
 {
 	frameRate(15);
 	size(400,400);
 	colony = new bacteria[100];
 	for(int n = 0;n < colony.length; n++)
 	{
 		colony[n] = new bacteria();
 	}//initialize bacteria variables here   

 }   
 void draw()   
 {  
 	background(255);  
 	for(int n = 0; n < colony.length; n++)
 	{
	colony[n].move();
	colony[n].show();
	}//move and show the bacteria   
 }  
 class bacteria    
 {     
 	int myX, myY;
 	bacteria()
 	{
 		myX = (int)(Math.random()*400);
 		myY = (int)(Math.random()*400);
 	}
 	void move()
 	{
 		if(myX < mouseX)
 		{
 			myX = myX + (int)(Math.random()*3)-0;
 		}
 		else  
 		{
 			myX = myX + (int)(Math.random()*3)-2;
 		}
 		if(myY < mouseY)
 		{
 			myY = myY + (int)(Math.random()*3)-0;
 		}
 		else  
 		{
 			myY = myY + (int)(Math.random()*3)-2;
 		}
 		if(myX == mouseX && myY == mouseY)
 		{
 			myX = (int)(Math.random()*400);
 			myY = (int)(Math.random()*400);
 		}
 		
 	}
 	void show()
 	{
 		int g;
 		int size;
 		size = (int)(Math.random()*7)+6;
 		g = (int)(Math.random()*205)+51;
 		fill(0, g, 0);
 		ellipse(myX, myY, size, size);
 	}//lots of java!   
 }    
