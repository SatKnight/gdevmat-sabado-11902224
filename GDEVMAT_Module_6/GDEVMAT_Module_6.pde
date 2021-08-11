Walker[] walker = new Walker[8];

//PVector wind = new PVector(0.15, 0);
//PVector gravity = new PVector (0, -0.4);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
  int posY = 0;
  for (int i = 0; i < 8; i++)
  {
    float r = random(255);
    float g = random(255);
    float b = random(255);
    //posX = 1 * (Window.windowWidth / 10) * (i - 5);
    posY = 1 * (Window.windowHeight / 8)  * (i - 8 / 2);
    walker[i] = new Walker(r, g, b);
    walker[i].position = new PVector(-500, posY);
    walker[i].mass = 10 - i;
    walker[i].scale = walker[i].mass * walker[i].scale;
  }
}

float mew = 0.01f;
float normal = 1;

void draw()
{
  background (255);
  noStroke();
  
  fill(0);
  rect(0, Window.bottom, 5, Window.windowHeight);
  
  for (Walker walker : walker)
  {
    
    //Friction = -1 * mew * N * v
    
    float frictionMagnitude = mew * normal;  
    
    PVector friction = walker.velocity.copy(); //Copies current velocity of walker

    friction.mult(-1);    
    friction.normalize();
    friction.mult(frictionMagnitude);
    
    walker.applyForce(friction);

    if (walker.position.x <= 0)
    {
      mew = 0.4f;
      
      friction.mult(-1);    
      friction.normalize();
      friction.mult(frictionMagnitude);
      
      walker.applyForce(friction);
    }
    
    PVector gravity = new PVector(0.2, 0 * walker.mass);
    
    walker.render();
    walker.update();
      
    walker.applyForce(gravity);   

    if (walker.position.y <= Window.bottom)
    {
      walker.position.y = Window.bottom;
      walker.velocity.y *= -1; //Newton's Third Law
    }
    
    if (walker.position.x >= Window.right)
    {
      walker.position.x = Window.right;
      walker.velocity.x *= -1; //Newton's Third Law
    }
  }
}

void mouseClicked()
{
  setup();
}
