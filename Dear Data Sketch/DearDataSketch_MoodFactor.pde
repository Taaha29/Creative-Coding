void setup() {
  size(800, 800);
  background(240);
  noLoop();
}

void draw() {
  
  int[] moodLevels = {3, 2, 5, 3, 5, 5, 5};

  color[] moodColors = {
    color(100, 150, 255), 
    color(120, 200, 255), 
    color(255, 220, 150), 
    color(255, 180, 100), 
    color(100, 255, 150) 
  };

  float[] xPositions = new float[moodLevels.length];
  float[] yPositions = new float[moodLevels.length];
  float spacing = width / (moodLevels.length + 1);

  float baseY = height / 2;

  for (int i = 0; i < moodLevels.length; i++) {
    xPositions[i] = spacing * (i + 1);
    yPositions[i] = baseY + map(moodLevels[i], 1, 5, 50, -50); 
  }

  stroke(100, 100, 255, 150);
  strokeWeight(2);
  for (int i = 0; i < moodLevels.length - 1; i++) {
    line(xPositions[i], yPositions[i], xPositions[i + 1], yPositions[i + 1]);
  }

  for (int i = 0; i < moodLevels.length; i++) {
    fill(moodColors[moodLevels[i] - 1]); 
    noStroke();
    float circleSize = map(moodLevels[i], 1, 5, 30, 80);
    ellipse(xPositions[i], yPositions[i], circleSize, circleSize);
  }
}
