/* Declare an Alien */
 Alien[] alien;
 PImage alienImage;
 
 void settings()
 {
   size(SCREENX, SCREENY);
 }
void setup()
{
 /* create a new alien object */
  background(255);
  //alien = new Alien(100, 100, alienImage);
  alien = new Alien[10];
  alien[0] = new Alien(100, 100, alienImage);
  alien[1] = new Alien(140, 100, alienImage);
  alien[2] = new Alien(180, 100, alienImage);
  alien[3] = new Alien(220, 100, alienImage);
  alien[4] = new Alien(260, 100, alienImage);
  alien[5] = new Alien(300, 100, alienImage);
  alien[6] = new Alien(340, 100, alienImage);
  alien[7] = new Alien(380, 100, alienImage);
  alien[8] = new Alien(420, 100, alienImage);
  alien[9] = new Alien(460, 100, alienImage);
}

void draw(){
  /* clear the screen */
  /* move the alien */
  /* draw the alien */
  background(0);
  alien[0].move();
  alien[0].draw();
  alien[1].move();
  alien[1].draw();
  alien[2].move();
  alien[2].draw();
  alien[3].move();
  alien[3].draw();
  alien[4].move();
  alien[4].draw();
  alien[5].move();
  alien[5].draw();
  alien[6].move();
  alien[6].draw();
  alien[7].move();
  alien[7].draw();
  alien[8].move();
  alien[8].draw();
  alien[9].move();
  alien[9].draw();
}
