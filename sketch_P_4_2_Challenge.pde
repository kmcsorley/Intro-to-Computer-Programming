//RGB color values
float r;
float g;
float b;

float x1;
float y1;
float size1;
boolean over1;
boolean pressed1;

float xoff1;
float yoff1;

float x2;
float y2;
float size2;
boolean over2;
boolean pressed2;

float xoff2;
float yoff2;


//distance from the center of the window
float d;

//fill value
color c;

void setup(){
  size(400, 400);
  strokeWeight(3);
  size1 = 150;
  x1 = width/2 - 80;
  y1 = height/2;
  over1 = false;
  pressed1 = false;
  
  size2 = 100;
  x2 = width/2 + 80;
  y2 = height/2;
  over2 = false;
  pressed2 = false;
}

void draw(){
  background(100);
  
  //assign values
  d = dist(width/2, height/2, mouseX, mouseY);
  r = map(mouseX, 0, width, 0, 255);
  g = map(mouseY, 0, height, 0, 255);
  b = map(d, 0, 282.8, 0, 255);
  
  if(dist(x1, y1, mouseX, mouseY) < size1/2){
    over1 = true;
  } else {
    over1 = false;
  }
  
  //draw ellipse
  c = color(r, g, b);
  
  if(over1){
    stroke(255);
    if(pressed1){
      fill(255);
    } else {
      fill(c);
    }
  } else {
    stroke(c);
    fill(c);
  }
    
  ellipse(x1, y1, size1, size1);
  
  
  //****************************************************************************
  
  if(dist(x2, y2, mouseX, mouseY) < size2/2){
    over2 = true;
  } else {
    over2 = false;
  }
  
  //draw ellipse
  c = color(255-r, 255-g, 255-b);
  
  if(over2){
    stroke(255);
    if(pressed2){
      fill(255);
    } else {
      fill(c);
    }
  } else {
    stroke(c);
    fill(c);
  }
    
  ellipse(x2, y2, size2, size2);
}

void mousePressed(){
  if(over1){
    pressed1 = true;
  } 
  xoff1 = x1- mouseX;
  yoff1 = y1 - mouseY;
  
    if(over2){
    pressed2 = true;
  } 
  xoff2 = x2 - mouseX;
  yoff2 = y2 - mouseY;
}

void mouseDragged(){
  if(pressed1){
    x1 = mouseX + xoff1;
    y1 = mouseY + yoff1;   
  }
  
  if(pressed2){
    x2 = mouseX + xoff2;
    y2 = mouseY + yoff2;   
  }
}

void mouseReleased(){
  pressed1 = false;
  
  pressed2 = false;
}
