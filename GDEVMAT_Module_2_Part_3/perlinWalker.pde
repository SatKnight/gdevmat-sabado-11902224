class perlinWalker
{
  float x;
  float y;
  float s; //Scale/EXTRA THICC
  float r, g, b; //Color
  float tx = 0, ty= 10000, ts = 20; //Time variables
  float tr = 100, tg = 101, tb = 102; //Time color variables
  
  void render()
  {
    fill(r, g, b);
    circle(x, y, s);  
  }
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    s = map(noise(ts), 1, 2, 5, 150);
    r = map(noise(tr), 0, 1, 0, 255);
    g = map(noise(tg), 0, 1, 1, 255);
    b = map(noise(tb), 0, 1, 2, 255);
    tx += 0.01f;
    ty += 0.01f;
    ts += 0.01f;
    tr += 0.01f;
    tg += 0.01f;
    tb += 0.01f;
  }
}
