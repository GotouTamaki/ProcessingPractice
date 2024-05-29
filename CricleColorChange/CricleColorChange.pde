void setup()
{
  size(640, 480);
}

float _cx = 320;
float _cy = 240;
float _r = 100;
color _a = color(255, 0, 0);
color _b = color(0, 0, 255);

void draw() 
{
  background(230);
  circle(_cx, _cy, 2*_r);
  float dx = _cx - mouseX;
  float dy = _cy - mouseY;
  float d2 = dx * dx + dy * dy;
  
  //ピタゴラスの定理を利用
  if (d2 < _r*_r) 
  {
    fill(_a);
  } 
  else 
  {
    fill(_b);
  }
}
