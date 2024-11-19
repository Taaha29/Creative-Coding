void setup()
{
  size(400, 300);
  background(255, 236, 149);
  fill(203, 118, 122);
  textSize(32);
}
 
void draw()
{
  background(123, 236, 149);
  rect(mouseY, mouseX, 120, 80);
  stroke(32);
  text(frameCount, 120,50);
}
