public class Triangolo  {
  private color colore;
  private color bordo;
  
  public Triangolo(){
    colore = color(65,160,60);
    bordo = color(180,250,240);
  }
  public void show(int distanza, int larghezza){
    strokeWeight(3); //spessore
    stroke(bordo); //colore del bordo
    fill(colore);
    triangle(330, 200-distanza, 380-larghezza, 300-distanza, 280+larghezza, 300-distanza);
 
  }

  public void setColore(color colore){this.colore = color(colore); }
  public color getColore(){ return colore;}
  public color getBordo(){  return bordo; }
  public void setBordo(color colore){bordo = colore;}





}
