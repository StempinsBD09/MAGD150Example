size(300,300);
background(50);

noFill();
stroke(255);
bezier(140,170,180,170,20,270,180,270);

colorMode(HSB,20,50,100);
noStroke();
fill(200,100,50);
arc(180,180,100,100,0, radians(360));

colorMode(RGB, 360,100,100);
noStroke();
fill(200,30,255);
beginShape(TRIANGLES);
vertex(0,120);
vertex(0,300);
vertex(130,300);
endShape();

fill(0);
noStroke();
triangle(230,280,190,260,160,280);

colorMode(RGB,360,100,100);
noStroke();
fill(255,200,100);
arc(50,50,45,45,0, radians(360));
