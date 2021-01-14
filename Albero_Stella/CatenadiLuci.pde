public class CatenadiLuci{
  
  private Luce[] luci;
  int nluci;
  
  CatenadiLuci(int nl){
    nluci = nl;
    luci = new Luce[nluci];
    
    for(int i = 0; i<nluci; i++){
      luci[i] = new Luce(width*1/5*(i+1), 256, 10, true); //ascisse, ordinate, numero di triangoli
    }
  }
  
  void draw(){
    for(int i = 0; i<nluci; i++){
      luci[i].draw();
    }
  }
  
  public void ePremuto(float mx, float my) {
    for(int i = 0; i<nluci; i++){
      luci[i].premuto(mx, my);
    }
    
  }
  
}
