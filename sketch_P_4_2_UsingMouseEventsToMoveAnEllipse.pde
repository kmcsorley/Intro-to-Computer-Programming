//RGB color values
float r;
float g;
float b;

float x;
float y;
float size;
boolean over;
boolean pressed;

float xoff;
float yoff;

//distance from the center of the window
float d;

//fill value
color c;

void setup(){
  size(400, 400);
  strokeWeight(3);
  size = 150;
  x = width/2;
  y = height/2;
  over = false;
  pressed = false;
}

void draw(){
  background(100);
  
  //assign values
  d = dist(width/2, height/2, mouseX, mouseY);
  r = map(mouseX, 0, width, 0, 255);
  g = map(mouseY, 0, height, 0, 255);
  b = map(d, 0, 282.8, 0, 255);
  
  if(dist(x, y, mouseX, mouseY) < size/2){
    over = true;
  } else {
    over = false;
  }
  
  //draw ellipse
  c = color(r, g, b);
  
  if(over){
    stroke(255);
    if(pressed){
      fill(255);
    } else {
      fill(c);
    }
  } else {
    stroke(c);
    fill(c);
  }
    
  
  ellipse(x, y, size, size);
}

void mousePressed(){
  if(over){
    pressed = true;
  } 
  xoff = x - mouseX;
  yoff = y - mouseY;
}

void mouseDragged(){
  if(pressed){
    x = mouseX + xoff;
    y = mouseY + yoff;   
  }
}

void mouseReleased(){
  pressed = false;
}