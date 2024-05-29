void setup()
{
  size(500, 500);
}

float x = 0;
float y = 0;
float rotateR = 200;
float r = 30;
float th = 0;

void draw() 
{
  background(255,200,255);
   x = rotateR * cos(th) + 250;
   y = rotateR * sin(th) + 250;
   th += 0.1;
   circle(x,y,r*2);
   color a = color(200, 255, 200);
   fill(a);
}
