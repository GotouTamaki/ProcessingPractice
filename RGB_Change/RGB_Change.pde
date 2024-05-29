void setup()
{
  size(500, 500);
}

void draw()
{
  if (mouseX < 1.0/3*500) 
  {
    background(255, 0, 0);
  } 
  else if (mouseX < 2*500/3)
  {
    background(0, 255, 0);
  }
  else 
  {
    background(0, 0, 255);
  }
}
