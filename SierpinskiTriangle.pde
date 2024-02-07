int baseCaseLimit1 = 5;
int baseCaseLimit2 = 40;
int currentBaseCase = baseCaseLimit1;

void setup() {
  size(400, 400);
}

void draw() {
  background(245, 230, 243);
  sierpinski(width/2-150, height/2+150, 300, currentBaseCase);
}

void mousePressed() {
  if (currentBaseCase == baseCaseLimit1) {
    currentBaseCase = baseCaseLimit2;
  } else {
    currentBaseCase = baseCaseLimit1;
  }
}

void sierpinski(int x, int y, int len, int baseCaseLimit) {
  if (len < baseCaseLimit) {
     stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    triangle(x, y, x - len / 2, y + len, x + len / 2, y + len);
  } else {
    sierpinski(x, y, len / 2, baseCaseLimit);
    fill(111, 234, 247);
    sierpinski(x + len / 2, y, len / 2, baseCaseLimit);
    fill(111, 247, 216);
    sierpinski(x + len / 4, y - len / 2, len / 2, baseCaseLimit);
  }
}
