void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0); 
  
}


void draw()
{
background(0);
//circle(10, 10, 10);

drawCartesianPlane();
drawLinearFunction();
drawQuadraticFunction();
drawSineWave();
}
  

void drawCartesianPlane()
{
strokeWeight(1); //changes thickness of the line
color white = color(255, 255, 255); //sets a color variable
fill(white); //fills with the color selected
stroke(white); //all strokes will be the color selected
line(300, 0, -300, 0);
line(0, 300, 0, -300);

for(int i = -300; i <= 300; i += 10){
line(i, -2, i, 2);
line(-2, i, 2, i); 
}

}

void drawLinearFunction(){
color purple = color(255, 0, 255); //sets a color variable
fill(purple); //fills with the color selected
noStroke();

  for (int x = -300; x<= 300; x++){
  circle(x, -5 * x + 30, 5); 
  }
}

void drawQuadraticFunction(){
color yellow = color(255, 255, 0); //sets a color variable
fill(yellow); //fills with the color selected
stroke(yellow);
noStroke();

  for (float x = -300; x <= 300; x += 0.1f){
  circle(x,((float) Math.pow(x, 2) - (x * 15) - 3), 5); 
  }
}

void drawSineWave(){
color white = color(255, 255, 255); //sets a color variable
fill(white); //fills with the color selected
stroke(white);
float radius = 10;
float amplitude = 70, frequency = 60;

for(float x = -300; x <=300; x++){
circle(x, amplitude * (float)Math.sin(TWO_PI/frequency * x), 3);
}
}

//Circle Function (do not mind)
//void drawCircle(){
//color white = color(255, 255, 255); //sets a color variable
//fill(white); //fills with the color selected
//stroke(white);
//float radius = 50;

//for(int x = 0; x <=360; x++){
//circle((float)Math.cos(x) * radius, (float)Math.sin(x)*radius, 3);
//}
//}
