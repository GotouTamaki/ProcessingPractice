float rx = 0;
float ry = 0;
PImage img;
int scale = 20;
void setup() {
  size(400, 400, P3D);
  img = loadImage("earth_tx.jpg");
  textureMode(NORMAL);
}

void triangle(PVector v1, PVector v2, PVector v3, int u, int v, int up, int side) {
  texture(img);
  float su =  1.0 / scale;
  float sv = 1.0 / scale;
  vertex(v1.x, v1.y, v1.z,(u + up) * su,(v + side) * sv);
  vertex(v2.x, v2.y, v2.z,(u + up) * su,(v + up) * sv);
  vertex(v3.x, v3.y, v3.z,(u + side) * su,(v + up) * sv);
}

void quadrangle(PVector v1, PVector v2, PVector v3, PVector v4, int u, int v) {
  u = scale - u;
  triangle(v1, v2, v3, u, v, 1, 0);
  triangle(v3, v4, v1, u, v, 0, 1);
}

void sphere() {
  float R = 100;
  int n = scale;
  for (int i = 0; i < n; i++) {
    float th0 = i*PI/n - PI/2;
    float th1 = (i + 1)*PI/n - PI/2;
    for (int j = 0; j < n; j++) {
      float ph0 = j*2*PI/n;
      float ph1 = (j + 1)*2*PI/n;
      float r0 = R*cos(th0);
      float r1 = R*cos(th1);
      float y0 = R*sin(th0);
      float y1 = R*sin(th1);
      PVector v1 = new PVector(r0*cos(ph0), y0, r0*sin(ph0));
      PVector v2 = new PVector(r1*cos(ph0), y1, r1*sin(ph0));
      PVector v3 = new PVector(r1*cos(ph1), y1, r1*sin(ph1));
      PVector v4 = new PVector(r0*cos(ph1), y0, r0*sin(ph1));
      quadrangle(v1, v2, v3, v4, j, i);
    }
  }
}

void draw() {
  background(100);
  fill(255);
  //noStroke();
  stroke(255, 0, 0);
  
  translate(width/2, height/2);
  lights();

  rotateX(rx);
  rotateY(ry);
  ry += 0.01;

  beginShape(TRIANGLES);
  sphere();    
  endShape();
}

void mouseDragged() {
  rx -= 0.1*(mouseY - pmouseY);
  ry += 0.1*(mouseX - pmouseX);
}
