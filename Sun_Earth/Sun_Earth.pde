void setup()
{
  size(500, 500);
}

float _cx1 = 250;
float _cy1 = 250;
float _r1 = 100;
color _a = color(255, 132, 0);
color _b = color(0, 0, 255);
float _cx2 = 0;
float _cy2 = 0;
float _r2 = 50;
float _rotateR = 200;
float _th = 0;


void draw() 
{
  background(0, 121, 9);
  float dx = _cx1 - mouseX;
  float dy = _cy1 - mouseY;
  float d2 = dx * dx + dy * dy;
  
  if (d2 < _r1*_r1) 
  {
    circle(_cx1, _cy1, 2 * _r1);
    fill(_a);
    _cx2 = _rotateR * (cos(_th)) + 250;
    _cy2 = _rotateR * (sin(_th)) + 250;
    _th += 0.1;
    circle(_cx2,_cy2,_r2 * 2);
    fill(_b);
  } 
  else
  {
    circle(_cx1, _cy1, 2 * _r1);
    fill(_a);
  };
}
