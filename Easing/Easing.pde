float t = 0;
float ax = 50;
float bx = 450;

void setup() {
  size(500, 500,P3D);
}

float box4(float x)
{
  return x < 0.5 ? 2 * x * x : 1 - pow(-2 * x + 2, 2) / 2;
}

float box5(float x)
{
  float c5 = (float)((2 * Math.PI) / 4.5);
  return x == 0? 0: x == 1? 1
  : x < 0.5
  ? -(pow(2, 20 * x - 10) * sin((20 * x - 11.125) * c5)) / 2
  : (pow(2, -20 * x + 10) * sin((20 * x - 11.125) * c5)) / 2 + 1;
}

void draw() {
  lights();
  background(255);
  pushMatrix();
  translate((1 - t)*ax + t*bx,50,0);
  box(50);//箱１
  popMatrix();
  pushMatrix();
  translate((1 - t * t)*ax + t * t * bx,150,0);
  box(50);//箱２
  popMatrix();
  pushMatrix();
  translate((1 - t * t * t)*ax + t * t * t * bx,250,0);
  box(50);//箱３
  popMatrix();
  pushMatrix();
  translate((1 - box4(t))*ax + box4(t)* bx,350,0);
  box(50);//箱４
  popMatrix();
  pushMatrix();
  translate((1 - box5(t))*ax + box5(t)* bx,450,0);
  box(50);//箱５
  popMatrix();
  t += 0.01;
  if (1 <= t) {
    t = 0;
  }
}
