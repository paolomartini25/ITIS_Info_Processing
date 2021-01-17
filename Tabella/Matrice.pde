public class Matrice{
  
  int larg, h; //larghezza ed altezza del quadretto
  int numC, numR; //coordinate del quadretto
  
  color colore; //colore randomico del quadretto
  
  private Quadretto[] quadretti; //array che contiene i quadretti colorati
  
  Matrice(int numC, int numR){
    
    
    this.numC =  numC;  //numero di colonne
    this.numR =  numR;  //numero di righe
    larg = width/this.numC; //calcolo la larghezza del quadretto
    h = height/this.numR; //calcolo l'altezza del quadretto
    
    quadretti = new Quadretto[larg*h];
  }
  
  public void draw(){
    
    for(int i=1; i < numR; i++){ //creo le righe
      stroke(0, 0, 0);
      line(0, i*h, width, i*h);
    }
    
    for(int i=1; i < numC; i++){ //creo le colonne
      stroke(0, 0, 0);
      line(i*larg, 0, i*larg, height);
    }
    
    int cont = 0;
    if(frameCount%50 == 0){ //cambio di colore casuale dei quadretti
      colore = color(random(0,255), random(0,255), random(0,255));
    }
    
    while(quadretti[cont]!=null){ //disegna i quadretti selezionati
      fill(colore);
      rect((quadretti[cont].getCordX()*width)/numC, (quadretti[cont].getCordY()*height)/numR, larg, h); //genero un rettangolo di altezza 40 e larghezza 20
      //quadretti[cont].getCordX()*width)/numC: trasforma il numero del quadretto della matrice nella sua variabile reale
      cont++;
    }
    
  }
  
    public void ePremuto(float mx, float my) {
      boolean trovato = false;  //se il quadretto selezionato è già stato selezionato questa variabile diventa true
      int numq = 0; //numero dell'ultimo quadretto selezionato e salvato
      
      for(int i = 0; i<larg*h; i++){ //il for gira per il numero di quadretti
      
        if (quadretti[i]!=null){ //se il quadretto è colorato
          numq++;
          if (int(mx*numC)/width == quadretti[i].getCordX() && int(my*numR)/height == quadretti[i].getCordY()){ //se il quadretto colorato è quello 
            // int(mx*numC)/width: trasforma le acisse  nel numero del quadretto nella matrice
            trovato = true;
            
            for(int j = i; j<larg*h; j++){ //fa slittare tutti gli elementi indietro di 1 e decolora il quadretto selezionato
              if (j<(larg*h)-1){ //tutti gli elementi eccetto l'ultimo
                quadretti[j] = quadretti[j+1];
              }
              else quadretti[j] = null; 
            }
            
          }
        }
      }
      
      if(!trovato){ //se il quadretto non è ancora stato schiacciato:
        quadretti[numq] = new Quadretto (mx, my, numC, numR); //colora il quadretto
      }
    
    }
}
