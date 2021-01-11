
public class Stella{
   
  private static final int DIST_BARICENTRO =35;
  private static final int LARGHEZZA = 35;
  private static final int LUNG_CODA = 100;
  private static final int SPESSORE = 3;             //spessore dei bordi
  private static final color GIALLO = #FFFF00;      //colore giallo
  private static final color AZZURRO = #B4FAF0;      //colore azzurro
  private static final int STARTX = 100;
  private static final int STARTY = 60;
  
  private float cordX;
  private float cordY;
  private int dir;

  public Stella(){
    cordX = STARTX;
    cordY = STARTY;
  }

  public void show() throws Exception{
  
     background(#B4FAF0);
     strokeWeight(SPESSORE); //spessore
     stroke(AZZURRO); //colore del bordo
     fill(GIALLO);
       
     if (dir == 1) triangle(cordX, cordY+DIST_BARICENTRO/2, cordX-LUNG_CODA, cordY, cordX-LUNG_CODA, cordY+DIST_BARICENTRO);
     else if(dir == -1) triangle(cordX, cordY+DIST_BARICENTRO/2, cordX+LUNG_CODA, cordY, cordX+LUNG_CODA, cordY+DIST_BARICENTRO);
     
     triangle(cordX, cordY-DIST_BARICENTRO+DIST_BARICENTRO/2, cordX+LARGHEZZA, cordY+DIST_BARICENTRO, cordX-LARGHEZZA, cordY+DIST_BARICENTRO); 
     triangle(cordX, cordY+DIST_BARICENTRO+DIST_BARICENTRO/2, cordX+LARGHEZZA, cordY, cordX-LARGHEZZA, cordY); 
       
  }

  public void setCordX(float x) throws Exception 
  {
    if(x<0 || x>width){
      throw new Exception("ascisse impossibili");
    }
    else this.cordX = x;
  }
  
  public void setCordY(float y) throws Exception 
  {
    if(y<0 || y>height){
      throw new Exception("ordinate impossibili");
    }
    else this.cordY = y;
  }

  public void setDir(int dir) {this.dir = dir;}

  public float getCordX(){ return cordX; }

  public float getCordY(){ return cordY; }
  
}
