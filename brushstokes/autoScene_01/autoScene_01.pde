

float currentX = 0;
float currentY = 0;
float lastX = 0;
float lastY = 0;

void setup() {

  //size(800, 800);
  fullScreen();
  smooth();

  background(255);

  //frameRate(12);

  currentX = width/2;
  currentY = height/2;
}


void draw() {
  
   frameRate(int(map(noise(frameCount/5.1, frameCount/3.4), 0, 1, 1, 35)));

   // println(int(map(noise(frameCount/5.0, frameCount), 0, 1, 1, 15)));

  //fill(20, 0.333);
  //rect(0, 0, width, height);

  drawPine(currentX, currentY, frameCount%(random(5, 6)));


  if (frameCount%6 < 1) {

    lastX = currentX;
    lastY = currentY;

    currentX = currentX + random(-150, 150);
    currentY = currentY + random(-150, 150);
    
    

    if ((currentX < 0) | (currentX > width)) {
      currentX = random(width);
      lastX = currentX;

      fill(255, random(150, 200));
      rect(0, 0, width, height);
    }
    if ((currentY < 0) | (currentY > height)) 
    {
      currentY = random(height);
      lastY = currentY;
      fill(255, random(150, 200));
      rect(0, 0, width, height);
    }

    strokeWeight(random(20, 30));
    stroke(0, random(10, 30));
    bezier(currentX, currentY, currentX + random(-50, 50), currentY+ random(-50, 50), lastX + random(-50, 50), lastY + random(-50, 50), lastX, lastY);
    bezier(currentX, currentY, currentX + random(-50, 50), currentY+ random(-50, 50), lastX + random(-50, 50), lastY + random(-50, 50), lastX, lastY);
  }
}


void mouseClicked() {
}



void drawPine(float x, float y, float branchNum) {

  pushMatrix();
  translate(x, y);

  rotate(random(-PI/6, -PI/10));

  scale(random(0.5, 1.5));

  noFill();

  float i = branchNum;


  float a = - PI / 6.73;

  rotate(random(-PI/12, PI/12));

  float s = random(40, 45);

  strokeCap(SQUARE);
  strokeWeight(random(2, 6));
  stroke(0, random(180, 250));


  bezier(random(-5, 0)*cos(a*i), random(-5, 0)*sin(a*i), s*random(0.5, 0.7)*cos(a*i), 0, s*random(0.5, 0.7)*cos(a*i), -random(3, 8), s*cos(a*i), s*sin(a*i)-random(3, 8));

  updatePixels();




  popMatrix();
}
