public class Luce{
  
  private static final color GIALLO = #FFFF00;      //colore giallo
  private static final color GRIGIO = #C0C0C0;      //colore giallo
  private static final color VERDE = #41A03C;        // colore verde
  
  private float x;
  private float y;
  private float r;
  private boolean accesa;
  
public Luce(float x, float y, float r, boolean accesa) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.accesa = accesa;
  }

  void draw() {
    
    stroke(VERDE); //colore del bordo
    if (accesa) {
      fill(GIALLO);
    }
    else {
      fill(GRIGIO);
    }
    circle(x, y, 2*r); 
  }

  boolean premuto(float mx, float my) {
    float dx = mx - x;
    float dy = my - y;
    boolean ris = false;

    if((dx * dx) + (dy * dy) < (r * r)) {
      accesa = !accesa; 
      ris = true;
    }

    return ris;
  }
}
