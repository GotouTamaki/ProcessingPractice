PImage img;
void setup(){
  size(500,500,P3D);
  img = loadImage("dice.jpg");
}
float rotate = 0.0;
void draw(){
  background(250);
  translate(250,250,0);
  
  rotateY(rotate);
  rotateX(rotate);
  noStroke();
  drowCube(new PVector(-100,-100,100),
           new PVector(100,-100,100),
           new PVector(-100,100,100),
           new PVector(100,100,100),
           new PVector(-100,-100,-100),
           new PVector(100,-100,-100),
           new PVector(-100,100,-100),
           new PVector(100,100,-100)
           );
  rotate += 0.01;
}

void drowCube(PVector a, PVector b, PVector c, PVector d,
              PVector e, PVector f, PVector g, PVector h){
  beginShape(TRIANGLES);
  texture(img);
  // 面1
  vertex(a.x,a.y,a.z,130,121);
  vertex(b.x,b.y,b.z,226,121);
  vertex(c.x,c.y,c.z,130,217);
  vertex(b.x,b.y,b.z,226,121);
  vertex(c.x,c.y,c.z,130,217);
  vertex(d.x,d.y,d.z,226,217);
  // 面3
  vertex(e.x,e.y,e.z,30,121);
  vertex(a.x,a.y,a.z,126,121);
  vertex(g.x,g.y,g.z,30,217);
  vertex(a.x,a.y,a.z,126,121);
  vertex(g.x,g.y,g.z,30,217);
  vertex(c.x,c.y,c.z,126,217);
  // 面6
  vertex(f.x,f.y,f.z,330,121);
  vertex(e.x,e.y,e.z,426,121);
  vertex(h.x,h.y,h.z,330,217);
  vertex(e.x,e.y,e.z,426,121);
  vertex(h.x,h.y,h.z,330,217);
  vertex(g.x,g.y,g.z,426,217);
  // 面4
  vertex(b.x,b.y,b.z,230,121);
  vertex(f.x,f.y,f.z,326,121);
  vertex(d.x,d.y,d.z,230,217);
  vertex(f.x,f.y,f.z,326,121);
  vertex(d.x,d.y,d.z,230,217);
  vertex(h.x,h.y,h.z,326,217);
  // 面5
  vertex(e.x,e.y,e.z,130,21);
  vertex(f.x,f.y,f.z,226,21);
  vertex(a.x,a.y,a.z,130,117);
  vertex(f.x,f.y,f.z,226,21);
  vertex(a.x,a.y,a.z,130,117);
  vertex(b.x,b.y,b.z,226,117);
  // 面2
  vertex(g.x,g.y,g.z,130,221);
  vertex(h.x,h.y,h.z,226,221);
  vertex(c.x,c.y,c.z,130,317);
  vertex(h.x,h.y,h.z,226,221);
  vertex(c.x,c.y,c.z,130,317);
  vertex(d.x,d.y,d.z,226,317); 
  endShape();
}
