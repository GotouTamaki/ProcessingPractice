void setup()
{
  size(500, 500);
}

float th = 0.0;
float z = 100;

void draw()
{
  //background(200);
  float l = 200; 
  float x = 250 + l*cos(th);
  float y = 250 + l*sin(th);
  th += 0.1;
  
  color a = color(x,y,z);
  noStroke();
  fill (a);
  circle(x, y, z);
  
  //if(z >= 1)
  //{
     z = 250 + l*cos(th);
  //}
}
