void setup(){
  size(500, 500, P3D);
}
void draw(){
  background(255);
  lights();
  translate(250,250,250);
  rotateX(0.0);
  rotateZ(0.0);
  drawSphere(10, 50);
}
void drawSphere(int div, float radius){
   float rad = 360 / div;
  for(int i = 0; i <= 180; i += rad){
    
    PVector ip = new PVector(sin(radians(i)), cos(radians(i)), sin(radians(i)));
    PVector inp = new PVector(sin(radians(i + rad)), cos(radians(i + rad)), sin(radians(i + rad)));
    for(int j = 0; j < 360; j += rad){
      
      PVector jp = new PVector(cos(radians(j)), 0, sin(radians(j)));
      PVector jnp = new PVector(cos(radians(j + rad)), 0, sin(radians(j + rad)));
      
      PVector a = new PVector(ip.x * jp.x * radius,   ip.y * -radius,  ip.z * jp.z * radius);
      PVector b = new PVector(ip.x * jnp.x * radius,  ip.y * -radius,  ip.z * jnp.z * radius);
      PVector c = new PVector(inp.x * jp.x * radius,  inp.y * -radius, inp.z * jp.z * radius);
      PVector d = new PVector(inp.x * jnp.x * radius, inp.y * -radius, inp.z * jnp.z * radius);
  
      Rect(a, b, c, d);
    }
  }
}

void Rect(PVector a, PVector b, PVector c, PVector d){
  
  beginShape(TRIANGLES);
  
  vertex(a.x, a.y, a.z);
  vertex(b.x, b.y, b.z);
  vertex(c.x, c.y, c.z);
  
  vertex(b.x, b.y, b.z);
  vertex(c.x, c.y, c.z);
  vertex(d.x, d.y, d.z);
    
  endShape();
}
