void setup()
{
  size(500, 500);
}

int x = 10;
int y = 10;
float z = 0;
int vx = 2;
int vy = 10;

void draw()
{
  background(200);
  circle(x, y, 100);
  x += vx;
  y += vy;
  color a = color(x,y,z);
  stroke (a);
  fill (a);
  
  if (x < 10 || 490 < x) 
  {
    vx = -vx;
    z = random(255);
  }
  if(y < 10 || 490 < y)
  {
    vy = -vy;
  }
}
