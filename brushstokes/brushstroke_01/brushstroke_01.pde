





void setup() {

  background(255);

  size(800, 800);

  smooth();

  for (int n = 0; n < 10; n++) {
    ink(100*n, height*0.3, 100*n, height * 0.8);
  }


}

void draw() {
  
  
    for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      color c = get(x, y);
      if (brightness(c) < 100) {
        float r = noise(mouseX)*5;
        fill(0, 50);
       ellipse(x + noise(-r, r), y + noise(-r, r, r), r, r);
      }
    }
  }
  
}



void ink(float x1, float y1, float x2, float y2) {

  float rPos = 5;
  float cPos = 80;

  noStroke();
  fill(0, 100);

  for (int n = 0; n < 10; n++) {

    curve(x1 - random(-cPos, cPos), y1 + random(-cPos, cPos), 
      x1+random(-rPos, rPos), y1+random(-rPos, rPos), 
      x2+random(-rPos, rPos), y2+random(-rPos, rPos), 
      x2 + random(-cPos, cPos), y2 + random(-cPos, cPos));
  }
}
