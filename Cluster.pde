public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    private float angle;
    

    public Cluster(int len, int x, int y)
    {
        angle = (float)(Math.random()*2)*PI;
        
        //Tendril t = new Tendril(len, angle, x, y);
        //t.show();
        
        Tendril[] t = new Tendril[7];
        for(int i = 0; i < 7; i++){
           t[i] = new Tendril(len, angle += 2*PI/7, x, y);
           t[i].show();
        }
        
        
    }
    
    public void show()
    {
      
    }
}
