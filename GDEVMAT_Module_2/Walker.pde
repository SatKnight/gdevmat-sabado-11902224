class Walker
{
  float x;
  float y;
  
  void render()
  {
    float r = int(random(255)), g = int(random(255)), b = int(random(255)), a = int(random(100));
    fill(r, g, b, a);
    circle(x, y, 30);  
  }
  
  void randomWalk()
  {

    int rngsus = int(random(8));
    
    if (rngsus == 0)
    {
      y+=10;
      x+=10;
    }
    else if (rngsus == 1)
    {
      y-=10;
      x-=10;
    }
    else if (rngsus == 2)
    {
      x+=10;
      y-=10;
    }
    else if (rngsus == 3)
    {
      x-=10;
      y+=10;
    }
    else if (rngsus == 4)
    {
      x-=10;
    }
    else if (rngsus == 5)
    {
      x+=10;
    }
    else if (rngsus == 6)
    {
      y+=10;
    }
    else if (rngsus == 7)
    {
      y-=10;
    }
  }
}
