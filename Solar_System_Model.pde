
//Planet(float r, float d, float o, v)
Planet Sun = new Planet(0.005, 0, 0, 0);
Planet Mercury = new Planet(0.000016, 0.39, 87.96, 47.87);
Planet Venus = new Planet(0.00004, 0.723, 224.68, 35.02);
Planet Earth = new Planet(0.00004, 1, 365.26, 29.78);
Planet Mars = new Planet(0.00002, 1.524, 689.98, 24.077);
Planet Jupiter = new Planet(0.00047, 5.203, 4329.63, 13.07);
Planet Saturn = new Planet(0.00039, 9.539, 4329.63, 9.69);
Planet Uranus = new Planet(0.00017, 19.18, 30685.55, 6.81);
Planet Neptune = new Planet(0.00016, 30.06, 90410.5, 5.43);

float rscale = 90000;
float dscale = 30;
float speed = 1000;


void setup(){
  size(1000, 800);
}


void draw(){
  translate(-400, 400);
  background(255);
  
  stroke(255, 150, 0);
  fill(255, 150, 0);
  //Sun.drawPlanet();
  circle(0, 0, Sun.rad * rscale * 2);
  
  
  stroke(255, 100, 0);
  Mercury.drawOrbit();
  pushMatrix();
  rotate(-Mercury.angle);
  fill(255, 100, 0);
  Mercury.drawPlanet();
  //line(0,0,
  popMatrix();
  //translate(Sun.rad * rscale, 0);
  Mercury.angle = Mercury.angle+(Mercury.angleChange/speed);
  
  stroke(157, 193, 0);
  Venus.drawOrbit();
  pushMatrix();
  rotate(-Venus.angle);
  fill(157, 193, 0);
  Venus.drawPlanet();
  popMatrix();
  Venus.angle = Venus.angle+(Venus.angleChange/speed);
  
  stroke(0, 0, 255);
  Earth.drawOrbit();
  pushMatrix();
  rotate(-Earth.angle);
  fill(0, 0, 255);
  Earth.drawPlanet();
  popMatrix();
  Earth.angle = Earth.angle+(Earth.angleChange/speed);
  
  stroke(255, 0, 0);
  Mars.drawOrbit();
  pushMatrix();
  rotate(-Mars.angle);
  fill(255, 0, 0);
  Mars.drawPlanet();
  popMatrix();
  Mars.angle = Mars.angle+(Mars.angleChange/speed);
  
  stroke(123,104,238);
  Jupiter.drawOrbit();
  pushMatrix();
  rotate(-Jupiter.angle);
  fill(123,104,238);
  Jupiter.drawPlanet();
  popMatrix();
  Jupiter.angle = Jupiter.angle+(Jupiter.angleChange/speed);
  
  stroke(210, 180, 140);
  Saturn.drawOrbit();
  pushMatrix();
  rotate(-Saturn.angle);
  fill(210, 180, 140);
  Saturn.drawPlanet();
  popMatrix();
  Saturn.angle = Saturn.angle+(Saturn.angleChange/speed);
  
  stroke(25,25,112);
  Uranus.drawOrbit();
  pushMatrix();
  rotate(-Uranus.angle);
  fill(25,25,112);
  Uranus.drawPlanet();
  popMatrix();
  Uranus.angle = Uranus.angle+(Uranus.angleChange/speed);
  
  stroke(100, 149, 237);
  Neptune.drawOrbit();
  pushMatrix();
  rotate(-Neptune.angle);
  fill(100, 149, 237);
  Neptune.drawPlanet();
  popMatrix();
  Neptune.angle = Neptune.angle+(Neptune.angleChange/speed);
}



class Planet{
  float rad, dist, op, angle, angleChange;
  Planet(float r, float d, float o, float v){
    rad = r;
    dist = d;
    op = o;
    angle = 0;
    angleChange = v;
  }
  void drawPlanet(){
    circle(dist * dscale + Sun.rad * rscale, 0, rad * rscale * 2);
  }
  void drawOrbit(){
    noFill();
    //arc(x, y, width, height, start, stop);
    arc(0, 0, 2*(Sun.rad * rscale + dist * dscale), 2*(Sun.rad * rscale + dist * dscale), 0, TWO_PI);
  }
}
