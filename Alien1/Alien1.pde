final int A_FORWARD = 0;
final int A_BACKWARD = 1;
final int A_DOWN = 2;
class Alien {
  /* declare variables for alien position, direction of movement and appearance */
  int x;
  int y;
  int dx = 1;
  boolean explode = false;
  boolean right= true;
  boolean left = false, down = false;
  PImage myImage;
  /* Constructor is passed the x and y position where the alien is to
   be created, plus the image to be used to draw the alien */

  Alien(int xpos, int ypos, PImage alienImage) {
    /* set up the new alien object */
    x=xpos;
    y=ypos;

    myImage = loadImage("alien.gif");
    alienImage = myImage;
  }

  void move() {
    /* Move the alien according to the instructions in the exercise */
    if (right) {
      if (x<SCREENX-35)x++;
      else if (x>=SCREENX-35 && y<170)y++;
    }
    if (x==SCREENX-35 && y==170) {
      right = false;
      left = true;
    }
    if (left) {
      if (x>5)x--;
      else if (x<=5 && y<240)y++;
    }
    if (x==5 && y==240) {
      right = true;
      left = false;
    }
    if(y==240 && x==SCREENX-35){
      myImage = loadImage("explode.gif");
      
      alienImage = myImage;
    }
  }


  void draw() {
    /* Draw the alien using the image() method demonstrated in class */
    image(myImage, x, y);
  }
}
