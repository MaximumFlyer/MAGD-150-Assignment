//Ocean Thing
int x = 0;
int d = 500;
boolean sky = false;
int c = 255;
float w = 100;
void setup()
{
 size(500,500); 
 background(#A4FEFF);
  
 println("'Ocean Scene' by Max McFeggan\nClick to change time of day\nPress Any Key to make bubbles appear!");
 w = width * 0.5;
}

void draw()
{
  while(x<=500)//makes the ocean
  {
  fill(#2B8DC3);
  noStroke();
  rect(x,250,50,250);
  x+=50;
  }
  if(sky) //night
  {
  fill(#264A76);
  rect(-10,0,520,250);
  fill(240);
  ellipse(500, 0, 150, 150);
  c = 100;
  }
  else //day
  { 
  fill(#A4FEFF);
  rect(-10,0,520,250);
  fill(#FAFF3B);
  ellipse(500, 0, 170, 170);
  c = 255;
  }
  //cloud
  noStroke();
  fill(c);
  ellipse(w,100,135,30);
  ellipse(w-25,85,60,40);
  ellipse(w+20,80,80,60);
  if (w <= -75) //this is how I make the cloud move
  {
   w = width + 75; 
  }
  else
  {
    w = w - 1;
  }
  
}
void mousePressed() //change sky color
{
 sky = !sky; 
}

void keyPressed() //insert bubbles
{
  for(int f=0; f<1; f++)
    {
    float h = random(10,490);
    float y = random(270,490);
    float s = random(10,20);
    if (s <= 15)
    {
    fill(50,200,200, 90);
    noStroke();
    ellipse(h,y,s,s);
    }
    else
    {
    fill(100,255,255, 90);
    noStroke();
    ellipse(h,y,s,s); 
    }
  }
}
