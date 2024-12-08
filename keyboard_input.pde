void adjustStrokeWeight()
{

  if (keyPressed)
  {

    if (keyCode == UP)
    {

      STROKE_WEIGHT++;
    } else if (keyCode == DOWN)
    {

      STROKE_WEIGHT--;
    }
  }
}

void adjustSpinningDirections()
{
  if (keyPressed)
  {
    if (keyCode == RIGHT)
    {
      angle= angle + 0.03;
    } else if (keyCode == LEFT)
    {
      angle = angle - 0.07;
    }
  }
}

void adjustBoxSize()
{
  if (keyPressed)
  {
    if (keyCode == RIGHT)
    {
      Size = Size + 1;
    } else if (keyCode == LEFT)
    {
      Size = Size - 1;
    }
  }
}

void saveCurrentFrameAsPng()
{

  if (Frame_Count <=  Total_Frame)
  {
    saveFrame("CubeSecrecy-######.png");
    Frame_Count++;
  }
  if (Frame_Count >=  Total_Frame)
  {
    noLoop();
  }
}

void cleanBackground()
{
  if (keyPressed)
  {
    if (key == 'c')
    {
      background(BG_COLOR);
    }
  }
}
