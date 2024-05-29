void setup() {
  size(1000, 1000, P3D);
  frameRate(60);
}

void draw() {
  background(200);
  lights();
  Body(500, 420, 0);
  Head(0, -140, 0);
  RightArm(-90, -60, 0, 5);
  LeftArm(90, -60, 0, 5);
  RightLeg(-30, 180, 0, 2);
  LeftLeg(30, 180, 0, 2);
}

float _theta = 0;

void Body(float x, float y, float z)
{
  translate(x, y, z);
  _theta += 0.01;
  rotateX(0.0);
  rotateY((sin(_theta * 3) * 0.25) -0.4);
  rotateZ(0.0);
  fill(240, 240, 240);
  box(130, 200, 100);
}

void Head(float x, float y, float z)
{
  pushMatrix();  
  translate(x, y, z);
  rotateX(0.0);
  rotateY(sin(_theta * 3) * 0.45);
  rotateZ(0.0);
  fill(240, 240, 240);
  box(75, 75, 75);
  popMatrix();
}

void RightArm(float x, float y, float z, int len)
{
  pushMatrix();
  translate(x, y, z);
  rotateX(0.0);
  rotateY(0.0);
  rotateZ(sin(_theta * 3) * 0.2);
  fill(240, 240, 240);
  box(50, 20, 50);
  for(int i = 0; i < len - 1; i++)
  {
    translate(x + 40, 0, z);
    rotateX(0.0);
    rotateY(0.0);
    rotateZ(sin(_theta * 3) * 0.2);
    fill(240, 240, 240);
    box(50, 20, 50);
  }
  popMatrix();
}

void LeftArm(float x, float y, float z, int len)
{
  pushMatrix();
  translate(x, y, z);
  rotateX(0.0);
  rotateY(0.0);
  rotateZ(sin(_theta * 3) * 0.2);
  fill(240, 240, 240);
  box(50, 20, 50);
  for(int i = 0; i < len - 1; i++)
  {
    translate(x + -40, 0, z);
    rotateX(0.0);
    rotateY(0.0);
    rotateZ(sin(_theta * 3) * 0.2);
    fill(240, 240, 240);
    box(50, 20, 50);
  }
  popMatrix();
}

void RightLeg(float x, float y, float z, int len)
{
  pushMatrix();
  translate(x, y, z);
  rotateX(sin(_theta * 3) * 0.4);
  rotateY(0.0);
  rotateZ(0.0);
  fill(240, 240, 240);
  box(40, 160, 40);
  for(int i = 0; i < len - 1; i++)
  {
    translate(x + 30, y + -20, z);
    rotateX(-sin(_theta * 3) * 0.4);
    rotateY(0.0);
    rotateZ(0.0);
    fill(240, 240, 240);
    box(40, 160, 40);
  }
  popMatrix();  
}

void LeftLeg(float x, float y, float z, int len)
{
  pushMatrix();
  translate(x, y, z);
  rotateX(-sin(_theta * 3) * 0.4);
  rotateY(0.0);
  rotateZ(0.0);
  fill(240, 240, 240);
  box(40, 160, 40);
  for(int i = 0; i < len - 1; i++)
  {
    translate(x + -30, y + -20, z);
    rotateX(sin(_theta * 3) * 0.4);
    rotateY(0.0);
    rotateZ(0.0);
    fill(240, 240, 240);
    box(40, 160, 40);
  }
  popMatrix();  
}
