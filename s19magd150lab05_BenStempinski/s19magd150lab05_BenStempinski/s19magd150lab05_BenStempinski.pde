float buttonX, buttonY, fadeTime, textSize;
color hoverFill;
float x = 100;
float y = 50;
float w = 100;
float h = 80;
int posX, posY, sizeX, sizeY;
color c;
int circleX, circleY;
int circleSize =50;
void setup() {
  size(400,400);
  pixelDensity(displayDensity());
  background(32);
  posX = 200;
  posY = 250;
  sizeX = 50;
  sizeY = 50;
  
  ellipseMode(RADIUS);
  buttonX = width;
  buttonY = height;
  
  colorMode(RGB);
  hoverFill = color(150,0,0);
  fadeTime = .02;
  
}

void draw() { 
  //the button dimension
  rect(x,y,w,h);
   textSize(32);
    fill(255);
  text("click", 115,100);
   fill(100,0,0);
  if(mousePressed){
  if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
    fill(30,0,0);
    randomizePos();
    colorize();
    displayEllipse();
  }
  }
}
  
void randomizePos(){
  posX = round(random(width)); 
  posY = round(random(height));
}
void colorize(){
  c = color(255,0,0);
}
void displayEllipse(){
  fill(c);
  ellipse(posX, posY, sizeX, sizeY);
}
 
