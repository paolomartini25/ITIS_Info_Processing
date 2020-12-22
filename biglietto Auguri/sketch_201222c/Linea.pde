public class Linea{
  private color colore;
  private color bordo;
  
  public Linea(){
    colore = color(255, 0, 0);
  }
  
  public void show(int xa, int ya, int xb, int yb){
    strokeWeight(3); //spessore
    stroke(colore); //colore della linea
    line(xa, ya, xb, yb);
    
  }

  public void setColore(color colore){this.colore = color(colore); }
  public color getColore(){ return colore;}
  public color getBordo(){  return bordo; }
  public void setBordo(color colore){bordo = colore;}
}
