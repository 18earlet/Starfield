Particle[] Normans;
void setup()
{
  size(1000, 1000);
  noStroke();
  Normans = new Particle[500];
  for (int i = 0; i < Normans.length; i++)
  {
    Normans[i] = new NormalParticle();
  }
  Normans[1] = new JumboParticle();
  Normans[0] = new OddballParticle(); 
}
void draw()
{
  background(155);
  for (int i = 0; i < Normans.length; i++)
  {
    Normans[i].move();                                                                           
    Normans[i].show();
  }
}

class NormalParticle implements Particle
{
  double x;
  double y;
  int Color;
  double Angle;
  double Speed;
  NormalParticle() {
    x=500;
    y=500;
    Angle=Math.random()*2*Math.PI;
    Speed=Math.random()*2;
  }
  public void show()
  {
    fill(35, 35, 35);
    ellipse((float)x, (float)y, 15, 15);
  }
  public void move()
  {
    x=x+(Math.cos(Angle))*Speed;
    y=y+(Math.sin(Angle))*Speed;
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double x;
  double y;
  int Color;
  double Angle;
  double Speed;
  OddballParticle() {
    x=500;
    y=500;
    Angle=Math.random()*2*Math.PI;
    Speed=Math.random()*2;
  }
  public void show()
  {
    fill(0, 255, 0);
    ellipse((float)x, (float)y, 100, 100);
  }
  public void move()
  {
    x=x+1;
    y=y+1;
  }
}
class JumboParticle implements Particle
{
  double x;
  double y;
  int Color;
  double Angle;
  double Speed;
  int r;
  int g;
  int b;
  JumboParticle() {
    x=500;
    y=700;
    Angle=Math.random()*2*Math.PI;
    Speed=Math.random()*2;
  }
  public void show()
  {
    fill(r, g, b);
    r = (int)(Math.random()*255);
    g = (int)(Math.random()*255);
    b = (int)(Math.random()*255);
    ellipse((float)x, (float)y, 150, 150);
  }
  public void move()
  {
    x=x+(Math.cos(Angle))*Speed;
    y=y+(Math.sin(Angle))*Speed;
  }
}

