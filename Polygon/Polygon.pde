void setup() {
  size(500, 500, P3D);
}

int pos1 = 300;
int pos2 = 300;
int pos3 = 300;
int pos4 = 300;
int pos5 = 300;
int pos6 = 300;
int pos7 = 300;
int pos8 = 300;

void draw() {
  background(255);
  lights();
  rotateX(0);
  rotateY(0);
  rotateZ(0);
  beginShape(TRIANGLES);
  int p = 0;
  int offset = 300;
  vertex(pos1, offset, offset);
  vertex(offset, offset + 1, offset);
  vertex(offset + 1, offset, offset);  
  vertex(offset + 1, offset + 1, offset);
  vertex(offset, offset, 1);
  vertex(offset, 1, 1);
  vertex(offset + 1, offset, offset + 1);
  vertex(offset + 1, offset + 1, offset + 1);
  endShape();
}
