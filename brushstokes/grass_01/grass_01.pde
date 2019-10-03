

void setup() {

  size(800, 800);
  background(255);

  drawGrass();
}



void draw() {
}



void keyPressed() {
  background(255);
  drawGrass();
}



void drawGrass() {

  float grassHeight = random(0.7, 0.8);

  for (int n = 0; n < 150; n++) {

    float xPos = random(width);



    // draw grass
    strokeWeight(random(5));
    stroke(0, random(50, 200));
    line(xPos, height*grassHeight + noise(n)*50, xPos + random(-40, 40), height*grassHeight - noise(n)*200);
  }
}
