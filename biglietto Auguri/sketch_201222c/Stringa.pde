public class Stringa{
  private color colore;
  
  private PFont f = createFont("Georgia", 64);
  private String s = "Auguri e Buone Feste!";
  
  public Stringa(){
    colore = color(255, 0, 0);
  }
  
  public void show(){
    
    fill(colore); //colore della stringa
    
    textFont(f);
    textSize(64);
    text(s, 10, 100);
    
  }

  public void setColore(color colore){this.colore = color(colore); }
  public color getColore(){ return colore;}
}
