void setup() {
  size(500, 500);
}

float th = 0.0;
float th2 = 0.0;

void draw() {
  //background(200);
  noStroke();
  circleRotate(250,250,250,250);
}

void circleRotate (float x, float y, float x2, float y2){
  float l = 200;
  x += l*sin(th);  
  y += l*cos(th);
  circle(x, y, 100);
  x2 -= l*sin(th2);
  y2 -= l*cos(th2); 
  circle(x2, y2, 100);
  th2 -=0.1;
  
  if(th < 100){
    th += 0.1;
  }else if(th >100){
    th = 0;
  }
  
  float dx = x - x2;
  float dy = y - y2;
  float d2 = dx*dx + dy*dy;
  
  if (d2 < l*2) 
  {
    color CircleColor1 = color(random(255), random(255), random(255), random(255));
    fill(CircleColor1);       
  }
}
