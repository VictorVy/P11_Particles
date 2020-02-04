class Pearl
{
  float x, y, xDir, yDir;
  float size, speedX, speedY;
  float direction;
  
  public Pearl(float size, float speedX, float speedY)
  {
    x = mouseX;
    y = mouseY;
    this.size = size;
    this.speedX = speedX;
    this.speedY = speedY;
  }
  
  void appear()
  {
    image(pearl, x, y, size, size);
  }
  
  void move()
  {
    x += speedX;
    y += speedY;
    
    if(x > width || x < 0 || y > height || y < 0)
    {
      x = mouseX;
      y = mouseY;
    }
  }
}
