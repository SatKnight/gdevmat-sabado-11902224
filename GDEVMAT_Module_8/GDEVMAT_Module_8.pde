Walker[] gravityBalls = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
  
  for (int i = 0; i < 10; i++)
  {
    gravityBalls[i] = new Walker();
    
    float x = 200 * randomGaussian();
    float y = random(Window.bottom, Window.top);

    gravityBalls[i].position = new PVector(x, y);
    gravityBalls[i].mass = random(25);
    gravityBalls[i].scale = gravityBalls[i].mass * (i + 1);
    gravityBalls[i].r = random(255);
    gravityBalls[i].g = random(255);
    gravityBalls[i].b = random(255);
  }
}

void draw()
{
  background(255);
  
  for (int i = 0; i < 10; i++)
  {
    gravityBalls[i].update();
    gravityBalls[i].render();
    
    for (int j = 0; j < 10; j++)
    {
      if(i != j)
      {
        gravityBalls[i].applyForce(gravityBalls[j].calculateAttraction(gravityBalls[i]));
      }
    }
  }  
}
void mouseClicked()
{
  setup(); //Click mouse button to reset
}
