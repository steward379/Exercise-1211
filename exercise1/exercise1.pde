Ghost ghost;

void setup()
{
  size(500,500);
  ghost = new Ghost(width/2,height/2);
}

void draw()
{
  background(255);

  if (!ghost.isHitByMouse()) {
    ghost.move();
    ghost.draw();
  }
  else {
    ghost.dead();
  }
}