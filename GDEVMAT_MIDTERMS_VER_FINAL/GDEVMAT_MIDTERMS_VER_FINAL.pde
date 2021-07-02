Walker blackHole = new Walker(255, 255, 255, 50);
Walker otherBalls[] = new Walker[100];

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
  
  PVector mouse = mousePos();
  
  blackHole.position = new PVector(mouse.x, mouse.y); //Sets Black Hole to be rendered later
   
   for(int i = 0; i < 100; i++) //Sets Other Balls to be rendered later
    {
      float gaussianBall = randomGaussian();
      float gaussianBallScale = randomGaussian();
      
      otherBalls[i] = new Walker(random(255), random(255), random(255), 10 * gaussianBallScale);
      
      otherBalls[i].position = new PVector(400 * gaussianBall, random(Window.bottom, Window.top));
    }
}

void draw()
{
  //Flushes with Black background
  background(0);
          
    for(int i = 0; i < 100; i++) //For Rendering Other Balls with Direction
      {  
        otherBalls[i].renderBall();
        
        //Just in case any Ball gets out of frame on the x axis
          if (otherBalls[i].position.x < Window.left)
            {
              otherBalls[i].position.x = Window.left;
            }
          
          else if (otherBalls[i].position.x > Window.right)
            { 
              otherBalls[i].position.x = Window.right;
            }
          
        PVector direction = PVector.sub(blackHole.position, otherBalls[i].position);

        otherBalls[i].position.add(direction.normalize().mult(5));
      }
      
  blackHole.renderBall(); //Renders Black Hole
  
    if (frameCount % 300 == 0) //Resets after 300 frames
      { 
        setup();
      }
}
