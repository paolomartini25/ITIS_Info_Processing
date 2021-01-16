public class Quadretto{
  
  int cordX, cordY;
  int numC, numR;
  boolean acceso;
  
  Quadretto(float mx, float my, int nc, int nr){
    
    this.numC = nc;
    this.numR = nr;
    this.cordX = int(mx*numC)/width;
    System.out.println(cordX);
    this.cordY = int(my*numR)/height;
    System.out.println(cordY);
  }
  
  int getCordX(){
    return cordX;
  }
  
  int getCordY(){
    return cordY;
  }
  
}
