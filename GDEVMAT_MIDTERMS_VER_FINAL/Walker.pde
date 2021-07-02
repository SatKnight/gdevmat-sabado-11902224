class Walker
{
  PVector position = new PVector();

  float r, g, b;  
  float scale;
  
  Walker(float r, float g, float b, float scale)
  {
    //Colors
    this.r = r;
    this.g = g;
    this.b = b;
    
    //Scale
    this.scale = scale;
  }
  
  void renderBall()
  {    
    noStroke();
    fill(r, g, b);
    circle(position.x, position.y, scale);
  }
  
}
