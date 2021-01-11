public class Albero{
//correggere la la cx con cordx e settare il troco
  private static final int LARGHEZZA = 50;           //metà della larghezza della base del triangolo
  private static final int DIST_BARICENTRO = 50;     //distanza dal baricentro delle ordinate del triangolo
  private static final int AUMENTO = 30;             //aumento dell'altezza delle coordinate del triangolo
  private static final int DIMINUZIONE = 5;          //diminuzione della larghezza del triangolo
  private static final int L_TRONCO = 20;            //latghrzza del tronco
  private static final int H_TRONCO = 40;            // altezza del tronco
  private static final color MARRONE = #965A3C;      // colore marrone
  private static final color VERDE = #41A03C;        // colore verde
  private static final color AZZURRO = #B4FAF0;      //colore azzurro
  private static final int SPESSORE = 3;             //spessore dei bordi
  
  private float cordX;
  private float cordY;
  private int numt;
  
  public Albero(){
    
  }
  
  public void show(float cx, float cy, int num) throws Exception{
    
    setCordX(cx);
    setCordY(cy);
    setNumt(num);
    
    int diminuzione_larghezza = 0;
    int aumento_altezza = 0;
    int cont = 0;
    
    strokeWeight(SPESSORE); //spessore
    stroke(AZZURRO); //colore del bordo
    
    //Tronco
    fill(MARRONE);
    rectMode(CENTER); //grazie a questa funzione le coordinate che inserisco non sono sell'angolo in alto a destra ma delcentro del rettangolo
    rect(cordX, cordY+DIST_BARICENTRO, L_TRONCO, H_TRONCO); //genero un rettangolo di altezza 40 e larghezza 20
    
    //Aghi
    fill(VERDE);
    while(cont<numt){
      triangle(cordX, cordY-DIST_BARICENTRO-aumento_altezza, cordX+LARGHEZZA-diminuzione_larghezza, cordY+DIST_BARICENTRO-aumento_altezza, cordX-LARGHEZZA+diminuzione_larghezza, cordY+DIST_BARICENTRO-aumento_altezza);
      
      diminuzione_larghezza+=DIMINUZIONE;
      aumento_altezza+=AUMENTO;
      cont++;
    }
    
    
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
  
  public void setNumt(int numt) throws Exception 
  {
    if(numt<=0){
      throw new Exception("il numero di triangoli deve essere maggiore di 0");
    }
    else this.numt = numt;
  }
}
