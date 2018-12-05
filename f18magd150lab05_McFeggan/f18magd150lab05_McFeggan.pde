//TV Ball by Max McFeggan

float CircleX = 160;
float CircleY = 437.5;
float CircleW = 80;
float CircleH = 60;
float SquareX = 400;
float SquareY = 407.5;
float SquareW = 80;
float SquareH = 60;

float Color;

int posX, posY, sizeX, sizeY, speedX, speedY;

boolean TV;

void setup()
{
  println("'TV Ball' by Max McFeggan");
  size(600,500);
  background(#A38614);
  posX = round(random(125,475));
  posY = round(random(100,300));
  sizeX = 50;
  sizeY = 50;  
  speedX = round(random(-7,7));
  speedY = round(random(-7,7));
  TV = false;
}

void draw()
{
  fill(#C1C1C1);
  strokeWeight(3);
  stroke(#9F9F9F);
  rect(50, 30, 500, 350, 7);
  fill(#98793D);
  stroke(#766034);
  rect(50, 400, 500, 75, 7);
  //buttons
  fill(220);
  stroke(#9F9F9F);
  ellipse(CircleX,CircleY,CircleW,CircleH);
  rect(SquareX,SquareY,SquareW,SquareH, 7);
  
  textSize(16);
  fill(0);
  text("ON", 150, 440);
  text("OFF", 425, 440);
  
  fill(Color);
  noStroke();
  rect(125, 50, 350, 310);
  
  //Push the buttons
  if(mousePressed)
  {
  if(mouseX>CircleX-60 && mouseX <CircleX+CircleW && mouseY>CircleY-37.5 && mouseY <CircleY+CircleH)
  {
    fill(190);
    stroke(#9F9F9F);
    ellipse(CircleX,CircleY,CircleW,CircleH);
    textSize(16);
    fill(0);
    text("ON", 150, 440);
    TV = true;
  }
  if(mouseX>SquareX && mouseX <SquareX+SquareW && mouseY>SquareY && mouseY <SquareY+SquareH)
  {
   fill(190);
   stroke(#9F9F9F);
   rect(SquareX,SquareY,SquareW,SquareH, 7);
   textSize(16);
   fill(0);
   text("OFF", 425, 440);
   TV = false;
  }
  
  }

  //TV On
  if(TV == true)
  {
   Color = 255;
   moveBall();
   showBall();
  }
  else //TV Off
  {
   Color = 50;
   Off(); 
  }
}


void moveBall()
{
   posX = posX + speedX;
   posY = posY + speedY;
 
 if (posX+sizeX/2 >= 475 || posX-sizeX/2 <= 125)
 {
   speedX =- speedX;
 }
 if (posY+sizeY/2 >= 360 || posY-sizeY/2 <= 50)
 {
   speedY =- speedY;
 }
}

void showBall()
{
  fill(#FF4A4A);
  noStroke();
  ellipse(posX,posY,sizeX,sizeY);
}

void Off()
{
  fill(Color);
  noStroke();
  rect(125, 50, 350, 310);
}
