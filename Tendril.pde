class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private float myNumSegments, myX, myY;
  private float myAngle;
  private float startX, startY, endX, endY;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, float theta, int x, int y)
  {
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments = len;
  }
  public void show()
  {

    startX = myX;
    startY = myY;

    for(int i = 0; i < myNumSegments; i++){
      myAngle += (float)(Math.random()*0.4)-0.2;//HOW TO MATH.RANDOM -0.2 to 0.2
      endX = startX + cos(myAngle) * SEG_LENGTH;
      endY = startY + sin(myAngle) * SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
  }
}
