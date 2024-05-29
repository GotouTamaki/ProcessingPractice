//キャンパスサイズ
size(400,400);
//縁取りの調整
stroke(60);
//カービィから見て右足
color f = color(255,100,100);
fill (f);
ellipse(120,310,130,90);
//左足
fill (f);
ellipse(270,310,130,90);
//右手
color a = color(255,192,203);
fill (a);
ellipse(90,190,130,90);
//左手
fill (a);
ellipse(310,190,130,90);
//体
fill (a);
circle(200,200,250);
//黒目
color b = color(60,60,60);
fill (b);
ellipse(160,160,40,90);
ellipse(230,160,40,90);
//青い影
color h = color(80,84,255);
fill (h);
ellipse(160,170,30,60);
ellipse(230,170,30,60);
fill (b);
ellipse(160,157,40,60);
ellipse(230,157,40,60);
//白目
color c = color(255,255,255);
fill (c);
ellipse(160,147,30,60);
ellipse(230,147,30,60);
//口
color d = color(240,0,0);
fill (d);
circle(195,230,10);
//頬
color e = color(255,105,180);
fill(e);
ellipse(120,230,50,20);
ellipse(270,230,50,20);
