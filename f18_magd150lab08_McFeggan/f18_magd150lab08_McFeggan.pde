String[] lines;
PFont T, A;
String sourceText = "ImportantData.txt"; //imports text from the TXT file
int i;
boolean recording;
String File;
import processing.pdf.*;

//This poster is a parody of the 1979 film, "Alien".

void setup()
{
  File = "SpacePoster";
  size(500,600);
  background(0);
  T = createFont("Times New Roman",20); //creates a times new roman font
  A = createFont("Arial",15); //creates a arial font
  i = 0;
  recording = false;
}

void draw()
{
  
  if(recording)
  {
    beginRecord(PDF, File + ".pdf"); //this saves the poster as a PDF
  }
  background(0);
  
  //this creates the animated title text
  pushMatrix();
  shearX(frameCount / 180.0);
  textAlign(CENTER);
  textFont(T);
  text("S  P  A  C  E    B  E  I  N  G", width/2, 100);
  popMatrix();
  
  //this is just the shapes
  noStroke();
  fill(0,255,0,50);
  ellipse(width/2,(height/2)+70,170,100);
  fill(#EADC93);
  ellipse(width/2,height/2,150,170);
  
  //This is the bottom text part of the poster
  fill(255);
  textFont(A);
  lines = loadStrings(sourceText); //this loads in the txt file's text
  if(i == 0)
  {
  text(lines[i], width/2, 570);
  }
  
  if(recording)
  {
   endRecord(); //ends recording to PDF
   recording = false;
  }
}

//this helps make sure only one pdf is made and not thousands of PDFs.
void mousePressed()
{
  recording = true;
  println("recorded");
}
