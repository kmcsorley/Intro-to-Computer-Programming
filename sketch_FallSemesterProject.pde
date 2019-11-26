int r = 128;
int g = 128;
int b = 128;


boolean r_slide = false;
boolean r_active = false;
boolean g_slide = false;
boolean g_active = false;
boolean b_slide = false;
boolean b_active = false;


void setup() {
  size(355, 400);
}

void draw() {
  background(255);

  //DRAW SLIDER LINES
  strokeWeight(2);
  stroke(0);
  line(50, 50, 305, 50);  //red slider line
  line(50, 100, 305, 100);  //green slider line
  line(50, 150, 305, 150);  //blue slider line

  rectMode(CENTER);
  noStroke();

  //RED SLIDER ENDPOINTS
  if (mouseX > 42 && mouseX < 50 && mouseY > 46 && mouseY < 54) {
    if (mousePressed) {
      r--;
      if (r < 0) {
        r = 0;
      }
    }
  }
  if (mouseX > 301 && mouseX < 313 && mouseY > 46 && mouseY < 54) {
    if (mousePressed) {
      r++;
      if (r > 255) {
        r = 255;
      }
    }
  }

  //GREEN SLIDER ENDPOINTS
  if (mouseX > 42 && mouseX < 50 && mouseY > 96 && mouseY < 104) {
    if (mousePressed) {
      g--;
      if (g < 0) {
        g = 0;
      }
    }
  }
  if (mouseX > 301 && mouseX < 313 && mouseY > 96 && mouseY < 104) {
    if (mousePressed) {
      g++;
      if (g > 255) {
        g = 255;
      }
    }
  }

  //BLUE SLIDER ENDPOINTS
  if (mouseX > 42 && mouseX < 50 && mouseY > 146 && mouseY < 154) {
    if (mousePressed) {
      b--;
      if (b < 0) {
        b = 0;
      }
    }
  }
  if (mouseX > 301 && mouseX < 313 && mouseY > 146 && mouseY < 154) {
    if (mousePressed) {
      b++;
      if (b > 255) {
        b = 255;
      }
    }
  }

  //check over red
  if (dist(r+50, 50, mouseX, mouseY) < 10) {
    r_slide = true;
  } else {
    r_slide = false;
  }
  //check over green
  if (dist(g+50, 100, mouseX, mouseY) < 10) {
    g_slide = true;
  } else {
    g_slide = false;
  }
  //check over blue
  if (dist(b+50, 150, mouseX, mouseY) < 10) {
    b_slide = true;
  } else {
    b_slide = false;
  }

  //DRAW ENDPOINT BUTTONS
  //red
  fill(255, 0, 0);
  rect(46, 50, 8, 8);
  rect(309, 50, 8, 8);
  //green
  fill(0, 255, 0);
  rect(46, 100, 8, 8);
  rect(309, 100, 8, 8);
  //blue
  fill(0, 0, 255);
  rect(46, 150, 8, 8);
  rect(309, 150, 8, 8);


  //DRAW SLIDERS
  //red
  fill(255, 0, 0);
  ellipse(r+50, 50, 8, 8);
  //gree
  fill(0, 255, 0);
  ellipse(g+50, 100, 8, 8);
  //blue
  fill(0, 0, 255);
  ellipse(b+50, 150, 8, 8);

  //DRAW COLOR DISPLAY
  fill(r, g, b);
  rect(width/2, 275, 125, 125);
}

void mousePressed() {
  if (r_slide) {
    r_active = true;
  }
  if (g_slide) {
    g_active = true;
  }
  if (b_slide) {
    b_active = true;
  }
}

void mouseDragged() {
  if (r_active) {
    r = mouseX - 50;
  } 
  if (r < 0) {
    r = 0;
  }
  if (r > 255) {
    r = 255;
  }

  if (g_active) {
    g = mouseX - 50;
  } 
  if (g < 0) {
    g = 0;
  }
  if (g > 255) {
    g = 255;
  }

  if (b_active) {
    b = mouseX - 50;
  } 
  if (b < 0) {
    b = 0;
  }
  if (b > 255) {
    b = 255;
  }
}

void mouseReleased() {
  r_active = false;
  g_active = false;
  b_active = false;
}

