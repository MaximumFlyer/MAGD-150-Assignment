int BallX, BallY, BallW, BallH;
//some code is sampled from Week 5 Project. but not directly copied.

Class_Ball Bounce;
Class_Ball SecondBounce;

void setup()
{
  size(600,500);
  background(0);
  Bounce = new Class_Ball();
  SecondBounce = new Class_Ball(20, 20);
  pixelDensity(displayDensity());
}

void draw()
{
  noStroke();
  
  if (mousePressed)
  {
   background(0); 
  }
  
  Bounce.show();
  Bounce.move();
  SecondBounce.show();
  SecondBounce.move();
}
