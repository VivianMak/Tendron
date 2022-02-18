public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    private float angle;

    public Cluster(int len, int x, int y)
    {
        // your code here
        angle = (float)(Math.random()*2)+PI;
        Tendril t = new Tendril(len, angle, x, y);
        t.show();
    }
    
    public void show()
    {
      
    }
}
