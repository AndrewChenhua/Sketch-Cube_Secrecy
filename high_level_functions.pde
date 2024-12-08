void updateLineAppearance()
{

  adjustStrokeWeight();

  strokeWeight(modulateStrokeWeight(-1, 20));

  stroke(random(0, 255), random(0, 255), random(0, 255), STROKE_TRANSPARENCY);
}

void drawCube() {
  pushMatrix();
  translate(width/2, height/2);
  rotateX(angle);
  rotateY(angle);
  noFill();
  blendMode(BLEND);
  box(Size);
  popMatrix();

  angle= angle + 0.02;
}

void fade(int rate)
{
  noStroke();
  blendMode(ADD);

  fill(255, 255, 255, rate);
  rect(0, 0, width, height);
}
