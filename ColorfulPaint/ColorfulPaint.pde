//クリックに反応します
class Paint {
  float x, y;
  float vx, vy;
  float d = random(10, 40);
    
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  float a = random(0, 255);
  color c = color(r, g, b, a);

  
  Paint() {  // コンストラクター
    x = random(width);
    y = random(height);
    vx = random(-1, 1);
    vy = random(-1, 1);    
  }
  void draw() {
    noStroke();
    circle(x, y, d);
        
    if (mousePressed == true){
      x = mouseX;
      y = mouseY; 
    }
  }
  void move() {
    x += vx;
    y += vy;
    
     if (x < 0) {
      x = width;
    } else if (x > width) {
      x = 0;
    }
    if (y < 0) {
      y = height;
    } else if (y > height) {
      y = 0;
    }
  }
  
  void Color() {      
    fill(c);
    
    if (mousePressed == true){
      noStroke();
      circle(x, y, d);
      r = random(0, 255);
      g = random(0, 255);
      b = random(0, 255);
      a = random(0, 255);      
      c = color(r, g, b, a);
    }
  }
}

class SquarePaint extends Paint {
  void draw() {
    noStroke();
    square(x, y, d);
    
    if (mousePressed == true){
      x = mouseX;
      y = mouseY;
      noStroke();
      square(x, y, d);
      r = random(0, 255);
      g = random(0, 255);
      b = random(0, 255);
      a = random(0, 255);
    }
  }
}

int N = 300;
Paint[] ps = new Paint[N];

void setup() {
  size(500, 500);
  for (int i = 0; i < N; i++) {
   if (i % 2 == 0) {
      ps[i] = new Paint();
    } else {
      ps[i] = new SquarePaint();
    }   
  }
}

void draw() {  
  for (int i = 0; i < N; i++) {
    ps[i].draw();
    ps[i].move();
    ps[i].Color();
  }
}
