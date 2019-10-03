//Declare variables
float x1;
float y1;
float x2;
float y2;
float x3;
float y3;
float cX;
float cY;

void setup() {
  size(400, 400);
  frameRate(2);
}

void draw() {
  background(255);
  //set coordinates to random numbers
  x1 = random(width);
  y1 = random(height);
  x2 = random(width);
  y2 = random(height);
  x3 = random(width);
  y3 = random(height);
  
  //draw traingle
  strokeWeight(4);
  stroke(0);
  triangle(x1, y1, x2, y2, x3, y3);  
 
  //call centroid() to assign values for cX and cY
  cX = centroid(x1, x2, x3);  
  cY = centroid(y1, y2, y3);  

  //draw midpoint 
  strokeWeight(6);
  stroke(255, 0, 0);
  point(cX, cY);
  println(cX, cY);
}

//centroid function. Returns a float
float centroid(float a, float b, float c) {
  float cd;
  cd = (a + b + c)/3.0;
  return cd;
}