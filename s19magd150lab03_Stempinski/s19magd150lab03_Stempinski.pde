int blue; 
int green;

float deltaMouseX;
float deltaMouseY;

float w = 50.0;
float h = 50.0;

void setup(){
  size(500,500);
background(0,0,150);
fill(150,150,0);
rect(250, 400, width, 300);
println(frameCount);
}//hand

int value = 0; 
float mx = constrain(mouseY, 250, 250);
float mn = constrain(mouseX, 200, 0);

void draw(){
  noStroke();
  w = (w + 1) % (height / 3.5);
  h= (h+1) % (height/ 3.5);
fill(0,200,240);
fill(map(mouseX, 0, width, 0, 0),
0,
map(mouseY, 0, height, 200, 100));
ellipse(mn-10, mx-10,w, h);
line(mouseX, 250, pmouseX, 240);
println(mouseX + " : " + pmouseX);

//mouse up/down to blow bubbles. mouse left, right to clear bubbles. 

fill(map(mouseX, 0, width, 0, 0),
0,
map(mouseY, 0 , height, 0 , 0));
fill(180,250,0);
beginShape(QUADS);
vertex(250, 500);
vertex(250,200);
vertex(300,200);
vertex(300,500);
dist(250,500,300,200);
} //bubble blower
