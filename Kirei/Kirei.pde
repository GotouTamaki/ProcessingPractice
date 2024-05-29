size(500, 500);

for (int x = 0; x < 255; x += 5) 
{
  for (int y = 0; y < 255; y += 5) 
  {
    color a = color(255,x,y);
    stroke (a);
    line(500, 0, 0, x);
    line(0, 500, 0, x);
    line(0, 0, 500, x);
    color b = color(x,y,255);
    stroke (b);
    line(500, 500, 0, x);
    line(500, 500, 500, x);
    line(500, 500, x, 500);
    color c = color(x,255,y);
    stroke (c);
    line(0, 500, 500, x);
  }
}

for (int a = 0; a < 500; a += 5)
{
  color c = color(a,255,a);
  stroke (c);
  line(a,a,500,0);
  line(0,500,a,a);
}

noStroke();
colorMode(RGB, 500);

for (int i = 0; i < 500; i++) 
{
  for (int j = 0; j < 500; j++) 
  {
    stroke(i, j, 400);
    point(i, j);
  }
}
