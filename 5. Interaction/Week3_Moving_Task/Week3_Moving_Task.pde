float x;  
float y;  
int red = 255; 

void setup() {
  size(400, 400);  
  x = width/2;  
  y = height/2; 
}

void draw() {
  background(200, 382,39);  
  fill(red, 49, 293); 
  rect(x, y, 60, 60);  
}

void keyPressed() {
  if (key == 'w' && y > 0) {
    y -= 10;
  }
  if (key == 's' && y < height - 60) {  
    y += 10;
  }
  if (key == 'a' && x > 0) {
    x -= 10;
  }
  if (key == 'd' && x < width - 60) {  
    x += 10;
  }

  
  if (key == 'r') {
    red = max(0, red - 10);  
  }
  if (key == 'R') {
    red = min(255, red + 10);  
  }
}
