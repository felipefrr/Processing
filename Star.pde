// Modeling using a parametric equation approach
// Size (s) and space between lines (sp)
float s = 700;
int sp = 10;
// 1° Quad
float t1 = 350;
float t2 = 350;
// 2° Quad
float t3 = 0;
float t4 = 350;
// 4° Quad
float t7 = 0;
float t8 = 350;

Quad[] quads = new Quad[4];

void setup(){
  size(700,700);
  background(20);
  quads[0] = new Quad(1,s,s/2,0,sp);
  quads[1] = new Quad(2,s,s/2,s,sp);
  quads[2] = new Quad(3,s,s/2,s,sp);
  quads[3] = new Quad(4,s,0,s/2,sp);
}

void draw(){
  stroke(255);
  strokeWeight(1);
  line(s/2,0,s/2,s);
  line(0,s/2,s,s/2);
  quads[0].show();
  delay(10);
  quads[1].show();
  delay(10);
  quads[2].show();
  delay(10);
  quads[3].show();
}
