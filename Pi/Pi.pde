/*
//階乗計算
float answer = 1;
int num = 10;
for(int i = 0; i < num; ++i){
  answer *= num - i;
}
println(answer);
*/
/*
// ライプニッツの公式
int N = 100000;
float sum = 0;
int sign = 1;
for (int n = 0; n < N; n++) {
  int a = sign;
  sign = -sign;
  int b = 2*n + 1;
  sum += 1.0*a/b;
}
println(4*sum);
*/
/*
// ウォリスの公式
int N = 30000;  // 32768以上は-0.0になる
float x = 1;
for (int n = 1; n < N; n++){
  int a = (2*n)*(2*n);
  int b = ((2*n)-1)*((2*n)+1);
  x *= 1.0*a/b;
}
println(2*x);
*/
/*
// マチンの公式
float x = 0;
x = 4 * atan(1.0 *1/5)-atan(1.0*1/239);
println(x*4);
*/
/*
// ラマヌジャンの公式にしたかったもの
int N = 10;
float sum = 0;
int 4n(int n){
  if(n == 0){
    return 1;
  }
  return n * 4n(n-1);

for (int n = 0; n < N; n++) {
  int a = (-1*-1n)*(21460*21460n+1123)*f(4n);
  int b = 2*n + 1;
  sum += 882*(2n+1)*f(4*4n)*f(4*4n)*f(4*4n)*f(4*4n);
}
println(4/sum);
*/
