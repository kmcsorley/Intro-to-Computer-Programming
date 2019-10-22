float x;
float y;
float xspeed;
float yspeed;
int size;
color c;

void setup(){
  size(400, 400);
  x = width/2;
  y = height/2;
  xspeed = random(-3, 3);
  yspeed = random(-3, 3);
  size = 30;
  c = color(255, 0, 0);
}

void draw(){
  background(200);
  if(x > width - size/2 || x < size/2){
    xspeed *= -1;
  }
  if(y > height - size/2 || y < size/2){
    yspeed *= -1;
  } 
  x += xspeed;
  y += yspeed;
  
  stroke(c);
  fill(c, 100);
  ellipse(x, y, size, size);
}
