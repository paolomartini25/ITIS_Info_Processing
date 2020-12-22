public class Rettangolo  {
  private color colore;
  private color bordo;
  
  public Rettangolo(){
    colore = color(150, 90, 60);
    bordo = color(180,250,240);
  }
  
  public void show(){
    strokeWeight(3); //spessore
    stroke(bordo); //colore del bordo
    fill(colore);
    rectMode(CENTER); //grazie a questa funzione le coordinate che inserisco non sono sell'angolo in alto a destra ma delcentro del rettangolo
    rect(330, 300, 20, 40); //genero un rettangolo di altezza 40 e larghezza 20
    
    
  }

  public void setColore(color colore){this.colore = color(colore); }
  public color getColore(){ return colore;}
  public color getBordo(){  return bordo; }
  public void setBordo(color colore){bordo = colore;}
}
