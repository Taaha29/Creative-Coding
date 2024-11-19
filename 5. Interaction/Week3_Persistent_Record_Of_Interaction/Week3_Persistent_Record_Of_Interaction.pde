void setup() {
  textSize(64);
  frameRate(5);
}

void draw() {
  background(250);
  fill(30, 256, 170);
  float xPosition = random(40,45);
  text(key,xPosition,70);
}

void keyPressed () {
  if (key == 'j') {
    background(255, 250, 50);
  } else {
    background(32, 250, 250);
  }
  print(key);
}
