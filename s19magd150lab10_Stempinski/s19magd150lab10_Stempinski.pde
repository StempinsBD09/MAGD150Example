PImage back, face, top, left, right, txtr; 
PVector sphereLoc;
float x, y, z, sphereRadius, 
scale, xRotation, yRotation,
u, v, uOffset, vOffset; 
void setup(){
  surface.setResizable(true);
  size(500,500,P3D);
  pixelDensity(displayDensity());
  colorMode(RGB,255,255,255);
  noStroke();
 sphereLoc = new PVector(width *.25, height *.5, 0);
 sphereRadius = 50;
 
 x = width/2.0;
 y= height/ 2.0;
 z = -700;
 scale= min(width,height) / 2.0;
 xRotation = 0;
 yRotation= 0;
 u=1;
 v=1;

 
 textureMode(NORMAL);
 textureWrap(REPEAT);
 
 //represents a paddle and a pong
 face = loadImage("LonePong.tif");
 left = loadImage("LonePong2.tif");
   
 }


void draw() {
  
  background(250,50,0);
  lights();
   camera();
   {
   if (mousePressed){
   scale(5);
   }
   }
  fill(0,250,100);
  pushMatrix();
  fill(0,0,150);
   ambientLight(60,200,120);
  translate(sphereLoc.x, sphereLoc.y, sphereLoc.z);
  rotateX(frameCount / 100);
  sphere(sphereRadius);
  popMatrix();
  //the pong is coming out of the left side
  sphereLoc.z = map(mouseX, 0, width, 50, -50);
    directionalLight(30,60,70,width,-1,0);
  pushMatrix();
  translate(x,y,z);
  scale(scale);
  rotateX(.5);
  rotateY(.5);
  beginShape();
  texture(face);
    vertex(-1, -1, 1, uOffset, vOffset);
  vertex(1, -1, 1, uOffset + u, vOffset);
  vertex(1, 1, 1, uOffset + u, vOffset + v);
  vertex(-1, 1, 1, uOffset, vOffset + v);
  endShape(CLOSE);
  beginShape();
  vertex(1, -1, 1, uOffset, vOffset);
  vertex(1, -1, -1, uOffset + u, vOffset);
  vertex(1, 1, -1, uOffset + u, vOffset + v);
  vertex(1, 1, 1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  vertex(1, -1, -1, uOffset, vOffset);
  vertex(-1, -1, -1, uOffset + u, vOffset);
  vertex(-1, 1, -1, uOffset + u, vOffset + v); 
  vertex(1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
    texture(left);
  vertex(-1, -1, -1, uOffset, vOffset);
  vertex(-1, -1, 1, uOffset + u, vOffset);
  vertex(-1, 1, 1, uOffset + u, vOffset + v);
  vertex(-1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  vertex(-1, 1, 1, uOffset, vOffset);
  vertex(1, 1, 1, uOffset + u, vOffset);
  vertex(1, 1, -1, uOffset + u, vOffset + v);
  vertex(-1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  vertex(-1, -1, -1, uOffset, vOffset);
  vertex(1, -1, -1, uOffset + u, vOffset);
  vertex(1, -1, 1, uOffset + u, vOffset + v);
  vertex(-1, -1, 1, uOffset, vOffset + v);
  endShape(CLOSE);
  popMatrix();
  
  noStroke();
  lights();
  translate(40,30,0);
  sphere(30);
  
  noStroke();
  lights();
  translate(400,400,20);
  box(50);
}
