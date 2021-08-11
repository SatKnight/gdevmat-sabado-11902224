Walker[] myWalker = new Walker[10];
Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
  
  int posX = 0;
  
  for(int i = 0; i < 10; i++)
  {
    posX = 1 * (Window.windowWidth / 10)  * (i - 10 / 2);
    
    myWalker[i] = new Walker();
    myWalker[i].position = new PVector(posX, 300);
    
    myWalker[i].r = random(255);
    myWalker[i].g = random(255);
    myWalker[i].b = random(255);
    
    myWalker[i].mass = 10 - i;
    myWalker[i].scale = myWalker[i].mass * 10;
  }
}

PVector wind = new PVector(0.1, 0);

void draw()
{
  background(255);
  noStroke();
  ocean.render();
  
  for(Walker myWalker : myWalker)
  {
    myWalker.render();
    myWalker.update();
    
    PVector gravity = new PVector(0, -0.15f * myWalker.mass); 
    myWalker.applyForce(gravity);
 
    float c = 0.1f;
    float normal = 1;
    float frictionMagnitude = c * normal;
    PVector friction = myWalker.velocity.copy();
    
    myWalker.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude)); //Applies Friction
    
    if(ocean.isCollidingWith(myWalker))
    {
      PVector dragForce = ocean.calculateDragForce(myWalker);
      myWalker.applyForce(dragForce);
    } 
    else
    {
      myWalker.applyForce(wind);
    }
    
    if (myWalker.position.y <= Window.bottom)
    {
     myWalker.position.y = Window.bottom;
     myWalker.velocity.y *= -1; //Newton's Third Law
    }
         
    if (myWalker.position.x >= Window.right)
    {
     myWalker.position.x = Window.right;
     myWalker.velocity.x *= -1; //Newton's Third Law
    }
  }
}

void mouseClicked()
{
  setup();
}
