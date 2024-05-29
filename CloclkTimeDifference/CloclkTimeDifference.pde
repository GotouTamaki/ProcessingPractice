class Clock {
  float x, y, timeDifference;
  String city;
  Clock(float x, float y, float timeDifference, String city) {
    this.x = x;
    this.y = y;
    this.timeDifference = timeDifference;
    this.city = city;
  }
  void draw() {
    int r = 100;
    noFill();
    strokeWeight(1);
    circle(x, y, 2*r);
    fill(0);
    for (int i = 0; i < 60; i++) {
      float rp = 0.9f*r;
      float th = 2*PI*i/60;
      float px = x + rp*cos(th);
      float py = y + rp*sin(th);
      if (i % 5 == 0) {
        strokeWeight(5);
      } else {
        strokeWeight(2);
      }
      point(px, py);
    }
    float s = second();
    float m = minute() + s/60;
    float h = ((hour() + m/60) % 12) + timeDifference;
    float rs = 0.95f*r;
    float rm = 0.9f*r;
    float rh = 0.7f*r;
    float th;
    th = 2*PI*h/12 - PI/2;
    strokeWeight(3);
    line(x, y, x + rh*cos(th), y + rh*sin(th));
    th = 2*PI*m/60 - PI/2;
    strokeWeight(2);
    line(x, y, x + rm*cos(th), y + rm*sin(th));
    th = 2*PI*s/60 - PI/2;
    strokeWeight(1);
    line(x, y, x + rs*cos(th), y + rs*sin(th));
    textSize(25);
    textAlign(CENTER, CENTER);
    text(city, x, y+45);
  }
}

Clock clockT;
Clock clockL;
Clock clockN;

void setup() {
  size(800, 500);
  clockT = new Clock(width/2f, height/2f, 0f, "TOKYO");
  clockL = new Clock(width/6f, height /2f, -8f, "LONDON");
  clockN = new Clock(width/1.2f, height/2f, -13f, "NEW YORK");
}

void draw() {
  background(255);
  clockT.draw();
  clockL.draw();
  clockN.draw();
}
