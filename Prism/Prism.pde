void setup(){
  size(500, 500, P3D);
}
void draw(){
  background(255);
  lights();
  translate(250,250,250);
  rotateX(1.0);
  rotateZ(0.0);
  drawCylinder(10, 50, 50);
}
void drawCylinder(int sides, float r, float h){
  float angle = TWO_PI / sides;
  beginShape(TRIANGLES);
  for (int i = 0; i < sides; i++) {        
      float x = cos(i * angle) * r;
      float y = sin(i * angle) * r;
      float nextX = cos((i + 1) * angle) * r;
      float nextY = sin((i + 1) * angle) * r;
      //下の三角形
      vertex(x, y, -h);  
      vertex(nextX, nextY, -h);     
      vertex(nextX, nextY, h); 
      //上の三角形
      vertex(x, y, -h); 
      vertex(nextX, nextY, h); 
      vertex(x, y, h); 
  }
  endShape();
}
