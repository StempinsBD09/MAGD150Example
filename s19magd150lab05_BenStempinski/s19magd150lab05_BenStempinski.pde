//Please open both submissions
float buttonX, buttonY, fadeTime, textSize;
color hoverFill;
float x = 200;
float y = 200;
float w = 200;
float h = 200;

void setup() {
size(400,400);
background(5);
colorMode(RGB);
noStroke();
}
void draw() {
  //the buttonless dimension
  ellipse(x,y,w,h);
  textSize(32);
  fill(255);
  text("don't press", 110,200);
  fill(200,0,0);
    if (mouseX>100 && mouseX <300 && mouseY>100 && mouseY <300) {
      fill(32);
      println("There are no buttons here");
      fill(5);
      ellipse(x,y,w,h);
    }
}
