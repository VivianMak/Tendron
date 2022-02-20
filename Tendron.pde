PImage imgDOCTOC;
PImage imgSPMAN;

public void setup()
{
  size(600, 600);  
  noLoop();
  imgDOCTOC = loadImage("DOCTOC.png");
  imgSPMAN = loadImage("SPMAN.png");
}

public void draw()
{
  //background(190,191,164);
  //background(199,215,178);
  background(141, 173, 92);
 
  Cluster c = new Cluster(50, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
  
  image(imgDOCTOC, 70,60);
  stroke(255);
  strokeWeight(15);

  fill(54,99,132);
  triangle(600,200, 200, 600, 600,600);
  image(imgSPMAN, 350,400, width/2, height/3);
  
  line(0,0, 600,0);
  line(600,0, 600,600);
  line(0,600, 600,600);
  line(0,0, 0,600);
  
}
public void mousePressed()
{
  redraw();
}
