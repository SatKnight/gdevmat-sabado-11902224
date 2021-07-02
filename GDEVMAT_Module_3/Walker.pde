class Walker
{
  PVector position = new PVector();
  PVector speed = new PVector(3, 4);
  
  void moveAndBounce()
  {
    //adds speed
    position.add(speed);
    
    //Bouncy conditions
    if((position.x > Window.right) || (position.x < Window.left))
    {
      speed.x *= -1;
    }
  
    if((position.y > Window.top) || (position.y < Window.bottom))
    {
      speed.y *= -1;
    }
    
    float r = int(random(255)); 
    float g = int(random(255)); 
    float b = int(random(255));
    fill(r, g, b);
    circle(position.x, position.y, 50);  
  } 
}
