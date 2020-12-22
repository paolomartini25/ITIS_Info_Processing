public class Cerchio  {
  private float dim;
  private static final float DIM_DEFAULT = 10;
  private color colore;
  private color bordo;
  
  public Cerchio (){
    dim = DIM_DEFAULT;
    colore = color(255, 0, 0);
    bordo = color(65,160,60);
}

  public void show(int cx, int cy){
    strokeWeight(3); //spessore
    stroke(bordo); //colore del bordo
    fill(colore);
    circle(cx, cy, dim); 
}

  public void setDim(float dim){if (dim >= 0) this.dim = dim;}
  public float getDim(){ return dim; }
  public void setColore(color colore){this.colore = color(colore); }
  public color getColore(){ return colore;}
  public color getBordo(){  return bordo; }
  public void setBordo(color colore){bordo = colore;}

}
