float xoff;
float yoff;
int x0;
int y0;
int x1;
int y1;
int x2;
int y2;
int x3;
int y3;
int x4;
int y4;
int x5;
int y5;
int x6;
int y6;
int x7;
int y7;
int x8;
int y8;
void setup(){
  size(400, 400);
  frameRate(20);
  strokeWeight(5);
  x0 = width/2;
  y0 = height/2;
  x1 = x0 + 100;
  y1 = y0;
  x2 = x0 + 71;
  y2 = x0 + 71;
  x3 = x0;
  y3 = y0 + 100;
  x4 = x0 - 71;
  y4 = y0 + 71;
  x5 = x0 - 100;
  y5 = y0;
  x6 = x0 - 71;
  y6 = y0 - 71; 
  x7 = x0;
  y7 = y0 - 100;
  x8 = x0 + 71;
  y8 = x0 - 71;
  
}

void draw(){
  background(255);
  xoff = random(-15, 15);
  yoff = random(-15, 15);
  stroke(0, 0, 128 + random(-64, 127));
  line(x0, y0, x1 + xoff, y1 + yoff);
  xoff = random(-15, 15);
  yoff = random(-15, 15);
    stroke(0, 0, 128 + random(-64, 127));
  line(x0, y0, x2 + xoff, y2 + yoff);
  xoff = random(-15, 15);
  yoff = random(-15, 15);
    stroke(0, 0, 128 + random(-64, 127));
  line(x0, y0, x3 + xoff, y3 + yoff);
  xoff = random(-15, 15);
  yoff = random(-15, 15);
    stroke(0, 0, 128 + random(-64, 127));
  line(x0, y0, x4 + xoff, y4 + yoff);
  xoff = random(-15, 15);
  yoff = random(-15, 15);
    stroke(0, 0, 128 + random(-64, 127));
  line(x0, y0, x5 + xoff, y5 + yoff);
  xoff = random(-15, 15);
  yoff = random(-15, 15);
    stroke(0, 0, 128 + random(-64, 127));
  line(x0, y0, x6 + xoff, y6 + yoff);
  xoff = random(-15, 15);
  yoff = random(-15, 15);
    stroke(0, 0, 128 + random(-64, 127));
  line(x0, y0, x7 + xoff, y7 + yoff);
    xoff = random(-15, 15);
  yoff = random(-15, 15);
    stroke(0, 0, 128 + random(-64, 127));
  line(x0, y0, x8 + xoff, y8 + yoff);
}
  