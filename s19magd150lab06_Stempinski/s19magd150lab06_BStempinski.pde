JoyButton myJoyButton;
//Atari: Playing Space Invaders 

  int x = 250;
  int y = 250;
  int w = 200;
  int h = 200;
void setup(){
  size(500,500);
  myJoyButton= new JoyButton();
}

void draw(){
  background(32);
  myJoyButton.display();
  myJoyButton.move();
  myJoyButton.JoyStick();
  }
