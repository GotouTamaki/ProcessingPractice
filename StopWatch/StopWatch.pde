class Button{
  float cx, cy, r; 
  String name;
  Button(float cx, float cy, float r, String name){
    this.cx = cx;
    this.cy = cy;
    this.r = r;
    this.name = name;
  }
  
 void draw(){ 
  float dx = cx - mouseX;
  float dy = cy - mouseY;
  float d2 = dx*dx + dy*dy; 
  color circleColor;
  color textColor;
  if (d2 < r*r){
    circleColor = color(200, 200, 200);
    fill(circleColor); 
  }else{
    circleColor = color(255, 255, 255);
    fill(circleColor);
  }
  circle(cx, cy, 2*r);
  textColor = color(0, 0, 0);
  fill(textColor);
  strokeWeight(1);
  textSize(45);
  textAlign(CENTER, CENTER);
  text(name, cx, cy);
 }
}

class StartButton extends Button{
  void draw(){
    if (d2 < r*r){ 
      if(mousePressed){
        println("a");
      }
    }
  }
}

int totalElapsedMillis;
int elapsedMillis;
int startMillis;
boolean running = false;

class Timer{

}

Button[] buttons = new Button[3];

void setup(){
  size(900,900);
  buttons[0] = new Button(width/5f, height/3f*2, 80f, "Start");
  buttons[1] = new Button(width/2f, height/3f*2, 80f, "STOP");
  buttons[2] = new Button(width/5f*4, height/3f*2, 80f, "RESET");
}

void draw(){
  background(255);
  for (Button b : buttons) {
    b.draw();
  }
}
