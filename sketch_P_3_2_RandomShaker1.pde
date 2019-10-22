int x; 
int y;
int size;

void setup() {
  size(100, 100);
  x = width/2;
  y = height/2;
  size = 30;
}

void draw() {
  background(200);
  step();
  strokeWeight(3);
  stroke(255, 0, 0);
  fill(255, 0, 0, 128);
  ellipse(x, y, size, size);
}

void step() {
  int choice = int(random(8));

  if (choice == 0) {
    x++;
  } else if (choice == 1) {
    x--;
  } else if (choice == 2) {
    y++;
  } else if (choice == 3) {
    y--;
  } else if (choice == 4) {
    x++;
    y++;
  } else if (choice == 5) {
    x++;
    y--;
  } else if (choice == 6) {
    x--;
    y++;
  } else {
    x--;
    y--;
  }
}
