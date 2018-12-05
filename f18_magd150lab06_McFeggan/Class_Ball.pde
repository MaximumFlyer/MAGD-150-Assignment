class Class_Ball
{
  int BallX, BallY, BallW, BallH, speedX, speedY;;
  float r,g,b;
  
  
  Class_Ball() //This sets up the ball's variables in the class.
  {
    BallX = round(random(10, 590));
    BallY = round(random(10, 455));
    BallW = 30;
    BallH = 30;
    speedX = round(random(-5,5));
    speedY = round(random(-5,5));
    
    r = random(15,255);
    g = random(15,255);
    b = random(15,255);
  }
  
  //This is a completely seperate line that will bounce around too, just smaller.
  Class_Ball(int BallW2, int BallH2)
  {
    BallX = round(random(10, 590));
    BallY = round(random(10, 455));
    BallW = BallW2;
    BallH = BallH2;
    speedX = round(random(-5,5));
    speedY = round(random(-5,5));
 
    r = random(15,255);
    g = random(15,255);
    b = random(15,255);
  }
  
  void show() //This show function allows the ball to be displayed.
  {
    
    fill(r,g,b,80);
    ellipse(BallX,BallY,BallW,BallH);
    
  }
  
  //The move function lets the ball move around and bounce across the screen 
  void move() 
  {
    BallX = BallX + speedX;
    BallY = BallY + speedY;
 
   if (BallX+BallW/2 >= width || BallX-BallW/2 <= 0)
   {
     speedX =- speedX;
     randomColor();
   }
   if (BallY+BallH/2 >= height || BallY-BallH/2 <= 0)
   {
     speedY =- speedY;
     randomColor();
   }
  }
   //The randomColor function changes the line/ball's color everytime it bounces on the edge of the screen.
  void  randomColor()
  {
    r = random(15,255);
    g = random(15,255);
    b = random(15,255);
  }
  
  
  
  
  
  
  
  
  
  
}
