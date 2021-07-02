void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0); 
  background(255);
}

void draw()
{ 
 float gaussian = randomGaussian();
 float scaleGaussian= randomGaussian();
 
 float standardDeviation = 1000; 
 float sdScale = 50;
 float mean = 0;
 float mScale = 0;
 
 float r = random(255), b = random(255), g = random(255), a = random(100);
 float x = standardDeviation * gaussian + mean; 
 float scale = sdScale * scaleGaussian + mScale;
 float y = random(-360, 360);
 
 noStroke();
 
 fill(r, g, b, a);
 circle(x, y, scale);
 
 if(frameCount % 300 == 0) //Flushes Background after 300 frames
 {
   background(255);
 }
}
