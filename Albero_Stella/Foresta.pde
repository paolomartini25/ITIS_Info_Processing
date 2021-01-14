public class Foresta {
  
  private Albero[] alberi;
  
  private int nalb;
  
  Foresta(int nalberi) throws Exception{
    this.nalb = nalberi;
    
    alberi = new Albero[nalb];
    
    for(int i = 0; i<nalb; i++){
      alberi[i] = new Albero (width*1/5*(i+1), 250, 3); //ascisse, ordinate, numero di triangoli
    }
    
    
  }
  
  void draw(){
    for(int i = 0; i<nalb; i++){
      alberi[i].draw();
    }
  }
  

  
}
