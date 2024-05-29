void setup(){
  size(500, 500);
}
PVector _hLine = new PVector(0, 0);
PVector _mLine = new PVector(0, 0);
PVector _sLine = new PVector(0, 0);
void draw(){
  float s = second();
  float m = minute() + s/60.0;
  float h = hour()%12 + m/60.0;  
  background(255);
  circle(250,250, 250);
  for(int i= 0; i < 60; ++i){
    float x = 250 + 120 * cos(TWO_PI/60*i-HALF_PI);
    float y = 250 + 120 * sin(TWO_PI/60*i-HALF_PI);    
    if(i%5 == 0){
      circle(x,y,3);      
    }
    else
    {
      circle(x,y,1);
    }
  }
  line(250,250,250+_hLine.x, 250+_hLine.y);
  line(250,250,250+_mLine.x, 250+_mLine.y);
  line(250,250,250+_sLine.x, 250+_sLine.y);
  //時間
  _hLine.x = 70 * cos(TWO_PI/12*h-HALF_PI);
  _hLine.y = 70 * sin(TWO_PI/12*h-HALF_PI);
  //分
  _mLine.x = 110 * cos(TWO_PI/60*m-HALF_PI);
  _mLine.y = 110 * sin(TWO_PI/60*m-HALF_PI);
  //秒
  _sLine.x = 120 * cos(TWO_PI/60*s-HALF_PI);
  _sLine.y = 120 * sin(TWO_PI/60*s-HALF_PI);
}
