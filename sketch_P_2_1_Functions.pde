//Challenge Level

color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
color yellow = color(255, 255, 0);
color purple = color(128, 0, 255);
color orange = color(255, 128, 0);

void setup() {
  size(400, 400);
  noLoop();
}

void draw() {
  background(220);
  // call the function here...
  createDrawing(220,50,60, purple);
  createDrawing(50, 100, 30, red);
  createDrawing(290, 250, 80, green);
  createDrawing(100, 200, 50, yellow);
  createDrawing(280, 125, 25, blue);
  createDrawing(80, 320, 55, orange);
}

void createDrawing(int x, int y, int size, color c) {
  strokeWeight(3);
  stroke(c);
  fill(c, 128);
  int separation = size;
  line(x - 0.75*separation, y, x - 0.5*separation, y);
  line(x + 0.5*separation, y, x + 0.75*separation, y);
  ellipse(x, y, size, size);
  ellipse(x - separation, y, size/2, size/2);
  ellipse(x + separation, y, size/2, size/2);
  stroke(0);
  point(x - 075*separation, y); 
}