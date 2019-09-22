float r;
float g;
float b;

void setup(){
size(400, 400);
frameRate(5);
strokeWeight(5);
noLoop();
}

void draw(){
  
  //ellispes*****************************************************
 
  background(175);
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  fill(r, g, b, 100);
  ellipse(width/2 + random(width/2*(-1), width/2), height/2 + random(height/2*(-1), height/2), random(100), random(100));
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  fill(r, g, b, 100);
  ellipse(width/2 + random(width/2*(-1), width/2), height/2 + random(height/2*(-1), height/2), random(100), random(100));
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  fill(r, g, b, 100);
  ellipse(width/2 + random(width/2*(-1), width/2), height/2 + random(height/2*(-1), height/2), random(100), random(100));
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  fill(r, g, b, 100);
  ellipse(width/2 + random(width/2*(-1), width/2), height/2 + random(height/2*(-1), height/2), random(100), random(100));
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  fill(r, g, b, 100);
  ellipse(width/2 + random(width/2*(-1), width/2), height/2 + random(height/2*(-1), height/2), random(100), random(100));
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  fill(r, g, b, 100);
  ellipse(width/2 + random(width/2*(-1), width/2), height/2 + random(height/2*(-1), height/2), random(100), random(100));

  //lines**********************************************
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  line(random(width), random(height), random(width), random(height));
    r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  line(random(width), random(height), random(width), random(height));
    r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  line(random(width), random(height), random(width), random(height));
    r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  line(random(width), random(height), random(width), random(height));
  
  //rectangles***********************************************
  r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  fill(r, g, b, 100);
  rect(random(width), random(height), random(100), random(100));
    r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  fill(r, g, b, 100);
  rect(random(width), random(height), random(100), random(100));
    r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  fill(r, g, b, 100);
  rect(random(width), random(height), random(100), random(100));
    r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  fill(r, g, b, 100);
  rect(random(width), random(height), random(100), random(100));
    r = random(255);
  g = random(255);
  b = random(255);
  stroke(r, g, b);
  fill(r, g, b, 100);
  rect(random(width), random(height), random(100), random(100));
  
}