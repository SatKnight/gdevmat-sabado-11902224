void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0); 
  background(255);
}


perlinWalker perlinWalker = new perlinWalker();
void draw()
{
   noStroke();
   perlinWalker.render();
   perlinWalker.perlinWalk();
}

//Do not mind
   //float t = 0;
   //float random = noise(t);
   //float x = map(random, 0, 1, 0, 360);
   //rect(-640 + (t * 100), -360, 1, x);

   //t+= 0.01f;
