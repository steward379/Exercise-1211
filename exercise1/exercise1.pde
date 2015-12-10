Ghost ghost;

void setup()
{
  size(500,500);
  ghost = new Ghost(width/2,height/2);
}

void draw()
{
  background(255);
  if (ghost.isHitByMouse() && mousePressed == true) {
    ghost.dead();
  }
  else{
    ghost.move();
    ghost.draw();
  }
}