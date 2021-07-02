void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0); 
  
}

Walker myWalker = new Walker();
WalkerBias myWalkerBias = new WalkerBias();
void draw()
{ 
  noStroke();
  myWalker.render();
  myWalker.randomWalk();
  
  //Walker is biased to the left side
  myWalkerBias.render();
  myWalkerBias.randomWalk();
}
