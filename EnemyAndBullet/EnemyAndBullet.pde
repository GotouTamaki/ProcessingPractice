import java.util.Iterator;
void setup() {
  size(500, 500);
}
ArrayList<Bullet> bulletList = new ArrayList<Bullet>();
float[] prevMouse = {width/2, height/2};
void draw() {
  background(50);
  circle(mouseX, mouseY, 20);
  translate(width/2, height/2);
  
  if(prevMouse[0] != mouseX || prevMouse[1] != mouseY){
    PVector dir = new PVector(mouseX - width/2, mouseY - height/2).normalize();
    bulletList.add(new Bullet(0, 0, dir, 1, 10));
    prevMouse[0] = mouseX;
    prevMouse[1] = mouseY;
  }
  Iterator<Bullet> bulletIterator = bulletList.iterator();
  while(bulletIterator.hasNext()){
    Bullet bullet = bulletIterator.next();
    bullet.move();
    if(bullet.x <= -width/2 || bullet.x >= width/2 || bullet.y <= -height/2 || bullet.y >= height/2){
      bulletIterator.remove();
    }
  }
  
  var th = atan2(mouseY - height/2, mouseX - width/2);
  rotate(th);
  triangle(-10, 10, -10, -10, 26, 0);
}
class Bullet
{
  PVector direction;
  float x, y, diameter, speed;
  Bullet(float x, float y, PVector direction, float speed, float diameter)
  {
    this.x = x;
    this.y = y;
    this.direction = direction;
    this.speed = speed;
    this.diameter = diameter;
  }
  void move()
  {
    pushMatrix();
    translate(x, y);
    circle(x, y, diameter);
    x += direction.x * speed;
    y += direction.y * speed;
    popMatrix();
  }
}
