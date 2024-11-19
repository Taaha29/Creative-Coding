void setup()
{
  size(600, 400);
  
  textAlign(CENTER, CENTER);
  textSize(40);
  fill(255);
  
}

void draw()
{
  background(255);
  rectMode(CENTER);
  fill(228, 0, 0);
  circle(width/2, height/2, 230);
  fill(255);
  circle(width/2, height/2, 140);
  fill(60, 0, 160);
  rect(width/2, height/2, 300, 50);
  fill(255);
  text("UNDERGROUND", 300, 200, 300);
}
