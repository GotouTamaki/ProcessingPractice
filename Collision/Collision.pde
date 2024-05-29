void setup()
{
  size(500, 500);
}

float cx = 250;
float cy = 250;
float r = 100;
int vx = 1;
int vy = 3;
color CircleColor1;
color CircleColor2;
color CircleColor3;
int rectx = 500;

void draw()
{
  background(255);
  float dx = cx - mouseX;
  float dy = cy - mouseY;
  float d2 = dx*dx + dy*dy;
  
  float dxr = cx - mouseX;
  float dyr = cy - mouseY;
  float d2r = dxr*dxr + dyr*dyr;
  
  if (d2 < r*r) 
  {
    CircleColor1 = color(random(255), random(255), random(255));
    fill(CircleColor1);     
    cx = random(500);
    cy = random(500);   
    r = random(250);
  }
  else 
  {
     CircleColor2 = color(cx, cy, r);
     fill(CircleColor2);
     background(CircleColor1);
  }
  
  circle(cx, cy, 2*r);
   cx += vx;
   cy += vy;
   
  if (cx < 10 || 490 < cx) 
  {
    vx = -vx;
  }
  
  if(cy < 10 || 490 < cy)
  {
    vy = -vy;
  }
  
  if(d2r < r*r && rectx > 0)
  {
   rectx -= 100;
  }
  
  fill(255, 0, 0);
  rect(0, 50, rectx, 10);
  
  if (rectx < 1)
  {
    textSize(50);
    text("clear", 200, 100);
    vx = 0;
    vy = 0;
    CircleColor3 = color(random(255), random(255), random(255));
    stroke(CircleColor3);
  }
}
