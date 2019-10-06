



void setup() {

  size(800, 800);
  smooth();

  background(230);
}



void draw() {
}




void mouseClicked() {

  drawPine(mouseX, mouseY);
}



void drawPine(float x, float y) {

  pushMatrix();
  translate(x, y);

  rotate(random(-PI/6, -PI/10));
  
  scale(random(1, 1.2));

  noFill();


  for (int i = 0; i < 6; i++) {
    //bezier(0, 0, -20*, 0, -40, -20, -40, -40);

    float a = - PI / 5.8;

    rotate(random(-PI/12, PI/12));

    float s = random(30, 40);

    strokeCap(ROUND);
    strokeWeight(random(3, 6));
    stroke(0, random(100, 200));


    bezier(random(-5, 0)*cos(a*i), random(-5, 0)*sin(a*i), s*random(0.5, 0.7)*cos(a*i), 0, s*random(0.5, 0.7)*cos(a*i), -random(3, 8), s*cos(a*i), s*sin(a*i)-random(3, 8));
  }



  popMatrix();
}
