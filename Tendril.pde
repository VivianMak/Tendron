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

    if(myNumSegments >= 30){
      stroke(101, 67, 33);
      strokeWeight(4);
    }else if(myNumSegments >= 12){
      stroke(139, 146, 22);
      strokeWeight(3);
    }else if(myNumSegments >= 3){
      stroke(167, 159, 15);
      strokeWeight(2);
    }else{ 
      stroke(201, 30, 10);
      strokeWeight(1);
    }
    
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
      if(myNumSegments >= 3){
        Cluster c = new Cluster((int)myNumSegments/3, (int)startX, (int)startY);
        c.show();
    }
  }
}
