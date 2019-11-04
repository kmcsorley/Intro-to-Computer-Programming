
float x;
float y;

float xspeed;
float yspeed;

float max;

int size;

boolean pause;

void setup(){
  size(400, 400);
  x = width/2;
  y = height/2;
  xspeed = random(-5.0, 5.0);
  yspeed = random(-5.0, 5.0);
  max = 10.0;
  size = 30;
  pause = false;
}

void draw(){
  background(200);
  strokeWeight(3);
  stroke(0);
  noFill();
  rect(0, 0, width, height);
  
  if(x < size/2 || x > width - size/2){
    xspeed *= -1;
  }
  if(y < size/2 || y > height - size/2){
    yspeed *= -1;
  }
  
  if(pause == false){
    x += xspeed;
    y += yspeed;
  }
  
  println(xspeed, yspeed);
  noStroke();
  fill(255, 0, 0);
  ellipse(x, y, size, size);
}

void keyPressed(){
  if(key == ' '){
    if(pause == false){
      pause = true;
    } else {
      pause = false;
    } 
  }
  
  if(key == CODED){
    if(keyCode == UP){
      if(yspeed > max*-1 + 1){
        yspeed--;
      }
    } else if(keyCode == DOWN){
      if(yspeed < max - 1){
        yspeed++;
      }
    } else if(keyCode == RIGHT){
      if(xspeed < max - 1){
        xspeed++;
      }
      xspeed++;
    } else if(keyCode == LEFT){
      if(xspeed > max*-1 + 1){
        xspeed--;
      }
    }
  } 
}
  
  

