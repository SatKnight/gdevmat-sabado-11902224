Walker[] walkers = new Walker[100];

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x, y);
}

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
  
  for(int i = 0; i < 100; i++)
  {
    walkers[i] = new Walker();
    walkers[i].position = new PVector(400 * randomGaussian(), random(Window.bottom, Window.top));    
    walkers[i].acceleration = new PVector();
  }
}

void draw()
{
  background(80);
  
  PVector mouse = mousePos();
    
    for(int i = 0; i < 100; i++)
    {
      PVector direction = PVector.sub(mouse, walkers[i].position);
      
      walkers[i].acceleration = direction;
      walkers[i].position.add(direction.normalize().mult(0.2));
      
      walkers[i].update();
      walkers[i].render();
    }
}

/*Steps for Vector Movement 101
1. Add velocity to position
2. Draw object at position*/
