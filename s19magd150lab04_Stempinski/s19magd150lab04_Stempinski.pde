//platter on a pizza on a platter
int pressed = 0;
int pressedState = 0;
int i=0;

void setup() {
  size(500,500);
  background(200,0,0);
  frameRate(4);
  
  fill(150,100,0);
    quad(0,100,0,500,500,500,500,100);
}

void draw(){
    {
      fill(200);
    ellipse(250,265,200,200);
        fill(150);
    ellipse(250,265,150,150);
  }
   if (pressedState==1){
     fill(250,100,0);
     ellipse(250,260,300,300);
   }
   if (keyPressed == true) {
   fill(0);
   } else {
     fill(200,200,0);
     ellipse(250,260, 250,250);
   }
   if (keyPressed) {
    if (key == 'f' || key == 'F') {
      strokeWeight(5);
    }
  } else {
    strokeWeight(0);
  }
  line(150,150,360,360);
 
  while (i>50) {
   stroke(10);
   line(10,i,50,i);
  }
}

void mousePressed() {
  pressed = pressed + 1;
  pressedState = (pressed %2);
 
  
}
