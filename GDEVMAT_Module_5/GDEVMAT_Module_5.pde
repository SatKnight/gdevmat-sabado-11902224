Walker[] walker = new Walker[10];

PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector(0, -0.4);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
  
  for (int i = 0; i < 10; i++)
  {
    float r = random(255);
    float g = random(255);
    float b = random(255);
    
    walker[i] = new Walker(r, g, b);
    walker[i].mass = 10 - i;
    walker[i].scale = walker[i].mass * walker[i].scale;
  }
}

void draw()
{
  background (255);
  noStroke();
  for (int i = 0; i < 10; i++)
  {
    walker[i].render();
    walker[i].update();
      
    walker[i].applyForce(wind);
    walker[i].applyForce(gravity);
    
    if (walker[i].position.y <= Window.bottom)
    {
      walker[i].position.y = Window.bottom;
      walker[i].velocity.y *= -1; //Newton's Third Law
    }
    
    if (walker[i].position.x >= Window.right)
    {
      walker[i].position.x = Window.right;
      walker[i].velocity.x *= -1; //Newton's Third Law
    }
  }
}
