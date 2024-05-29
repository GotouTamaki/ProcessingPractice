void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(100);
  lights();
  translate(width/2, height/2); 
  rotateX(-mouseY * 0.01);
  rotateY(-mouseX * 0.01);
  rotateZ(2); 
  fill(mouseX, mouseY, 0);
  box(100, 100, 100);
  translate(0, 150, 0);
  rotateX(0.0);
  rotateY(0.0);
  rotateZ(0.0);
  fill(mouseX, 0, mouseY);
  box(100, 100, 100);
}
