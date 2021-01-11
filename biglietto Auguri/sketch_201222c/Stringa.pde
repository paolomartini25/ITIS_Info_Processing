public class Stringa{
  
  private static final color ROSSO = #FF0000;
  private static final int DIM = 64;
  
  private int cordX;
  private int cordY;
  private String str;
  private PFont f = createFont("Georgia", DIM);
  
  public Stringa(int x, int y, String s){
    setCordX(x);
    setCordY(y);
    setString(s);
  }
  
  public void show(){
    
    fill(ROSSO); //colore della stringa
    
    textFont(f); //inizializzo il font della dtringa
    textSize(DIM); //inizializzo la dimensione della stringa
    text(str, cordX, cordY); //stampo la tringa
  }

  public void setCordX(int x) {this.cordX = x;}
  
  public void setCordY(int y) {this.cordY = y;}
  
  public void setString(String s) {this.str = s;}
}
