void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x, y);
}

//play https://www.youtube.com/watch?v=xlYCxbBZUCY while spinning for the best experience
void draw()
{
  background(130);
  
  PVector mouse = mousePos();
  
  //Sets mouse position
  mouse.normalize().mult(300);
 
  //Red Lines
  strokeWeight(10);
  stroke(255, 0, 0);
  
  line(0, 0, mouse.x, mouse.y);
  println(mouse.mag());   

  line(0, 0, -mouse.x, -mouse.y);
  
  //White Lines
  strokeWeight(5);
  stroke(255);
   
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
  
  //Handle
  mouse.normalize().mult(50);
  
  strokeWeight(15);
  stroke(0);
  
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
}
