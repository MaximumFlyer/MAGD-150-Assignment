import processing.video.*;
Movie Film;
import processing.sound.*;
SoundFile noise;
PImage image;
float timer;

void setup()
{
  size(900,700);
  Film = new Movie(this, "Finding Yoshi.mov"); //this code loads in the footage
  Film.loop(); //this code makes the video loop
  noise = new SoundFile(this, "Jab.wav"); //this loads the sound effect
  image = loadImage("breaking-news.png"); //this loads the image banner
  timer = 720;
}

void draw()
{
  noTint();
  image(Film,-100,0); //this displays the video on the screen
  
  tint(210,220); //this tints the image a bit to be transparent
  image(image,0,530, 900,200); //displays the image
  timer = timer - 1; //this allows the sound effect to play at the right time
  
  if(timer==0) //this plays the audio on cue.
  {
    noise.play(1.2); //plays the sound effect
  }
  if(timer <= -130) //this resets the timer so the video can loop
  {
    timer = 720;
  }
  
}

void movieEvent(Movie m)
{
 m.read(); 
}
