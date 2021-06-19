Alien theAliens[];
Player thePlayer;
Bullet bulletArray[];
int bulletNumber;
void setup() {
  PImage normalImg, explodeImg;
  normalImg= loadImage("alien.gif");
  explodeImg = loadImage("explode.gif");
  theAliens = new Alien[10];
  init_aliens(theAliens, normalImg, explodeImg);
  thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
  bulletArray = new Bullet[20];
  bulletNumber=0;
}
void settings(){
 size(SCREENX, SCREENY);
}
void draw() {
  background(0);
  for (int i=0; i<theAliens.length; i++) {
    theAliens[i].move();
    theAliens[i].draw();
    if (random(0, 500)<1)theAliens[i].die();
  }
  thePlayer.move(mouseX);
  thePlayer.draw();
}

void init_aliens(Alien baddies[], PImage okImg, PImage
  exImg) {
  for (int i=0; i<baddies.length; i++) {
    baddies[i] = new Alien(i*(okImg.width+GAP), 0, okImg, 
      exImg);
  }
}

void mousePressed(){
  bulletArray[bulletNumber] = new Bullet(thePlayer.x() + PADDLEWIDTH/2, thePlayer.y());
  bulletArray[bulletNumber].draw();
}
