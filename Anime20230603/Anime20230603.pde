void setup()
{
  size(500, 500);
  noStroke();
  colorMode(RGB, 500);
}

int x = 0;
int y = 0;
int z = 0;

void draw()
{
   Up();
}

void Up()
{
  x += 1;
  line(x, 0, 0, 0);
  line(0, x, 0, 0);
  line(x, x, 0, 0);
  line(x, x, x, 0);
  line(0, x, x, 0);
  line(0, x, x, x);
  y += 2;
  line(y, 0, 0, 0);
  line(0, y, 0, 0);
  line(y, y, 0, 0);
  line(y, y, y, 0);
  line(0, y, y, 0);
  line(0, y, y, y);
  z += 3;
  line(z, 0, 0, 0);
  line(0, z, 0, 0);
  line(z, z, 0, 0);
  line(z, z, z, 0);
  line(0, z, z, 0);
  line(0, z, z, z);
  stroke(x, y, 400);
  point(x, y);
}

void Down()
{
  x -= 1;
  line(x, 0, 0, 0);
  line(0, x, 0, 0);
  line(x, x, 0, 0);
  line(x, x, x, 0);
  line(0, x, x, 0);
  line(0, x, x, x);
  y -= 2;
  line(y, 0, 0, 0);
  line(0, y, 0, 0);
  line(y, y, 0, 0);
  line(y, y, y, 0);
  line(0, y, y, 0);
  line(0, y, y, y);
  z -= 3;
  line(z, 0, 0, 0);
  line(0, z, 0, 0);
  line(z, z, 0, 0);
  line(z, z, z, 0);
  line(0, z, z, 0);
  line(0, z, z, z);
}
