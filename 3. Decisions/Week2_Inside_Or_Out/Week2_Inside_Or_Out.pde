float x, y;

void setup() {
  
  size(200, 300);
  
  x = random(65, width - 65);
  y = random(50, height - 50);
}

void draw() {
  
  background(150);
  
  
  boolean insideRect = mouseX >= x - 65 && mouseX <= x + 65 && mouseY >= y - 10 && mouseY <= y + 10;
  boolean insideCircle = dist(mouseX, mouseY, x, y) <= 50;

  
  if (insideRect) {
    fill(255);  
  } else if (insideCircle) {
    fill(255, 0, 0);  
  } else {
    fill(255);  
  }
  ellipse(x, y, 100, 100);  
  
  
  if (insideRect) {
    fill(0, 0, 255);  
  } else {
    fill(255);  
  }
  rectMode(CENTER);
  rect(x, y, 130, 20);
}
