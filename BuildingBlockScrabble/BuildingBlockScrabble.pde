float ball_x, ball_y, ball_r;
float speed_x, speed_y;
float bar_w = 100, bar_h = 30;
float block_w = 100, block_h = 30;
int block_count = 5; // 6以上はエラーが出る ArrayIndexOutOfBoundsException: Index 5 out of bounds for length 5
boolean is_alive[][] = new boolean[block_count][5];

void setup(){
  size(500,500);
  ball_x = 250;
  ball_y = 250;
  ball_r = 50;
  speed_x = 1;
  speed_y = -2;
  
  // 全ての初期値をtrueに
  for(int i = 0 ;i < block_count; i++){
    for(int j = 0; j < 5; j++){
      is_alive[i][j] = true;
    }
  }
}

void draw(){
  background(255);
   BallDisplay();
   BarDisplay();
   BlockDisplay(block_count);
}

void BallDisplay(){
  circle(ball_x, ball_y, ball_r);
  ball_x += speed_x;
  ball_y += speed_y;
  
  // 壁との当たり判定
  if(ball_x + ball_r/2 > width) speed_x *= -1; // 右の壁に当たる時
  if(ball_x - ball_r/2 < 0) speed_x *= -1;  // 左の壁に当たる時
  if(ball_y - ball_r/2 < 0) speed_y *= -1; // 上の壁に当たる時
}

void BarDisplay(){
  rect(mouseX, mouseY, bar_w, bar_h);
  
  // バーとボールの当たり判定（上からの分）
  if((ball_x + ball_r / 2 > mouseX && ball_x - ball_r  /2 < mouseX + bar_w)  //x座標に関するもの
    &&(mouseY < ball_y + ball_r / 2 && ball_y + ball_r / 2 < mouseY + bar_h)){ //y座標に関するもの
      speed_y *= -1;
   }
}

void BlockDisplay(int count){
  for(int j = 0 ;j < count; j++){
    for(int i = 0; i < 5; i++){
      // 生きていればブロックを描画する
      if(is_alive[i][j]){
        rect(i * block_w, j*block_h, block_w, block_h);
      }
      
      // ブロックとボールの当たり判定
      if((ball_x + ball_r / 2 > i * block_w && ball_x - ball_r / 2 < (i + 1) * block_w) 
        &&(j * block_h < ball_y - ball_r / 2 && ball_y - ball_r / 2 < (j + 1) * block_h)
        && is_alive[i][j]){
          speed_y *= -1;
          ball_y = ball_r / 2 + (j+1) * block_h + 1;
          is_alive[i][j] = false; // ブロックは消える
      }
    }
  }
}
