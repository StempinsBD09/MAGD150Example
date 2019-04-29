class JoyButton{
  int pressed = 0;
  int pressedState = 0;

void display(){
      rectMode(CENTER);
  fill(50);
  rect(x,y,w,h,20);
  fill(10);
  rect(x,y,170,170, 20);
  fill(250,0,0);
  ellipse(200,200,40,40);
  fill(200,0,0);
  ellipse(200,200,30,30);
  fill(40);
  ellipse(250,250,70,70);
  fill(60);
  ellipse(250,250,70,60);
  
  
}

void JoyStick(){
  if (keyPressed == true) {
    fill(60);
    ellipse(250,250, 70,60);
    
    if (keyPressed) {
      if (key == 'a') {
        fill(40);
        ellipse(250,250,70,60);
        fill(60);
        ellipse(230,250,70,60);
      } else {
        if (keyPressed) {
        if (key == 'd') {
          fill(40);
          ellipse(250,250,70,60);
          fill(60);
          ellipse(270,250,70,60);
        } //Depending on which key is pressed, the ellipse, which represents the joystick, moves left or right
      
      }
    }
  }
  }
}
void move(){
   if(mousePressed){
    fill(100,0,0);
    ellipse(200,200,30,30);
    textSize(32);
    fill(200);
    rotate(.25);
    text("pew" + char(int(random(100,100))), random(width), random(height));
     //"Pew" only appears in the signified field of the screen. 
     println("Ship Destroyed");
   }   
}
}
