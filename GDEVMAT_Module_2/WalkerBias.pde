class WalkerBias
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

    int rngsus = int(random(100));
    
    if (rngsus <= 19)
    {
      y+=10;
      x+=10;
    }
    else if (rngsus >= 20 && rngsus <= 49)
    {
      y-=10;
      x-=10;
    }
    else if (rngsus >= 50 && rngsus <= 55)
    {
      x+=10;
      y-=10;
    }
    else if (rngsus >= 56 && rngsus <= 70)
    {
      x-=10;
      y+=10;
    }
    else if (rngsus >= 71 && rngsus <= 75)
    {
      x-=10;
    }
    else if (rngsus >= 76 && rngsus <= 86)
    {
      x+=10;
    }
    else if (rngsus >= 87 && rngsus <= 98)
    {
      y+=10;
    }
    else if (rngsus == 99)
    {
      y-=10;
    }
  }
}
