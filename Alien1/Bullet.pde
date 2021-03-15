class Bullet{
  int x;
  int y;
  color bulletColor = color(195);
  
  Bullet(int xpos, int ypos){
   x=xpos;
   y=ypos;
  }
  void draw(){
    fill(bulletColor);
    ellipse(x, y, 15, 15);
  }
  
  void move(){
   if(y>=0)
   y--;
  }
}
