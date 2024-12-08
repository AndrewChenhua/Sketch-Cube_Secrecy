int generateStartCoord()
{
  return (int)random(mouseX);
}

float modulateBoxSize(float minSize, float maxSize)
{
  return map(mouseX, 0, width, minSize, maxSize);
}

float modulateStrokeWeight(float minWeight, float maxWeight)
{
  var weight = STROKE_WEIGHT + random(-minWeight, maxWeight);
  return max(weight, 1);
}

float modulateStrokeColor(float minColor, float maxColor)
{
  var m = (float)millis();
  m = (m % 1000.0) / 1000.0;
  m = sin(m * 2 * PI);
  m = map(m, -1, 1, minColor, maxColor);
  return m;
}
