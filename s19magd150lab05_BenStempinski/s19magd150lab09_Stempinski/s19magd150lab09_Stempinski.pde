import processing.video.*;
import processing.sound.*;
PImage mir; 
Movie mirror;

SoundFile sound;
void setup(){
  size(900,900);
//mirrorception
  mir = loadImage("mirror.jpg");
  mirror = new Movie(this, "mirrorMovie.mov");
  mirror.loop();
  //spooky horror music
  sound = new SoundFile(this,"Spooky.wav"); 
  
  sound.loop();
  sound.amp(1);
}
void movieEvent(Movie mirror) {
  mirror.read();
}

void draw(){
  background(0);
  image(mir, 0 , 0 , width, height);
  tint(100);
 //mirror within a mirror
 //rotates the video to fit within the mirror
 translate(width/1.5, height/5);
rotate(PI/2.0);
  image(mirror,0,0);
  


}
