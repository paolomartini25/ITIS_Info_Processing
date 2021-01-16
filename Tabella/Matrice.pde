public class Matrice{
  
  int larg, h;
  int numC, numR;
  
  color colore;
  
  private Quadretto[] quadretti;
  
  Matrice(int numC, int numR){
    
    
    this.numC =  numC;
    this.numR =  numR;
    larg = height/this.numR;
    h = width/this.numC;
    
    quadretti = new Quadretto[larg*h];
  }
  
  public void draw(){
    
    for(int i=1; i < numR; i++){
      stroke(0, 0, 0);
      line(0, i*larg, width, i*larg);
    }
    
    for(int i=1; i < numC; i++){
      stroke(0, 0, 0);
      line(i*h, 0, i*h, height);
    }
    
    int cont = 0;
    if(frameCount%50 == 0){
      colore = color(random(0,255), random(0,255), random(0,255));
    }
    
    while(quadretti[cont]!=null){
      fill(colore);
      rect((quadretti[cont].getCordX()*width)/numC, (quadretti[cont].getCordY()*height)/numR, h, larg); //genero un rettangolo di altezza 40 e larghezza 20
      cont++;
    }
    
  }
  
    public void ePremuto(float mx, float my) {
      boolean trovato = false;
      int numq = 0;
      
      for(int i = 0; i<larg*h; i++){ //il for gira per il numero di quadretti
      
        if (quadretti[i]!=null){ //se il quadretto è colorato
          numq++;
          if (int(mx*numC)/width == quadretti[i].getCordX() && int(my*numR)/height == quadretti[i].getCordY()){ //se il quadretto colorato è quello premuto
            trovato = true;
            
            for(int j = i; j<larg*h; j++){ //fa slottare tutti gli elementi indietro di 1
              if (j<(larg*h)-1){ //tutti gli elementi eccetto l'ultimo
                quadretti[j] = quadretti[j+1];
              }
              else quadretti[j] = null;
            }
            
          }
        }
      }
      
      if(!trovato){ //se il quadretto non è ancora stato schiacciato:
        quadretti[numq] = new Quadretto (mx, my, numC, numR);
      }
    
    }
}
