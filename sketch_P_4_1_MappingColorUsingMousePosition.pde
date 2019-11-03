//RGB color values
float r;
float g;
float b;

//distance from the center of the window
float d;

//fill value
color c;

void setup(){
  size(400, 400);
  noStroke();
}

void draw(){
  background(100);
  
  //assign values
  d = dist(width/2, height/2, mouseX, mouseY);
  r = map(mouseX, 0, width, 0, 255);
  g = map(mouseY, 0, height, 0, 255);
  b = map(d, 0, 282.8, 0, 255);
  
  //draw ellipse
  c = color(r, g, b);
  fill(c);
  ellipse(width/2, height/2, 150, 150);
}