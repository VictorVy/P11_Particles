PImage pearl;

ArrayList<Pearl> myPearls;

void setup()
{
  size(800, 600);
  
  pearl = loadImage("pearl.png");
  
  myPearls = new ArrayList<Pearl>();
  
  for(int i = 0; i < 44; i++)
  {
    myPearls.add(new Pearl(random(10, 15), random(-10, 10), random(-10, 10)));
  }
}

void draw()
{
  background(0);
  
  for(Pearl i : myPearls)
  {
    i.appear();
    i.move();
  }
}
