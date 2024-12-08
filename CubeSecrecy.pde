int SIZE = 512;
int BG_COLOR = 255;
float STROKE_TRANSPARENCY = 10;
int FADE_RATE = 1;
int Size = 100;
int Total_Frame = 2000;
int STROKE_WEIGHT = 0;
int Frame_Count = 0;

int startX = 0;
int startY = 0;
int endX = 0;
int endY = 0;
int framesSaved = 0;

float angle = 0;


void setup()
{
  size(512, 512, P3D);
  background(BG_COLOR);
}

void draw()
{


  updateLineAppearance();

  adjustBoxSize();

  adjustStrokeWeight();

  adjustSpinningDirections();

  drawCube();

  cleanBackground();

  saveCurrentFrameAsPng();
}
