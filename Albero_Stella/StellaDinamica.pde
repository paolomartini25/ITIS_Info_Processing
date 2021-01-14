public class StellaDinamica extends Stella {
  
  private static final int INIZIOX = 100;
  private static final int FINEX = 540;
  
  private int speedX;  //velocità in orizzontale
  private final int DEFAULT_VET = 1;
 
  public StellaDinamica(){
    super();
    speedX = DEFAULT_VET;  
    setDir(DEFAULT_VET);
  }
  
  public void move() throws Exception{
    if (getCordX() + speedX > FINEX) {
      speedX = -1;
      setDir(speedX);
    }
    if (getCordX() + speedX < INIZIOX) {
      speedX = 1;
      setDir(speedX);
    }
      setCordX( getCordX() + speedX);
}

  public void draw() throws Exception{
    move();
    super.draw();
    }
    
    public void setSpeedX(int vel){
      this.speedX = vel;
    }

     public float getSpeedX(){
        return this.speedX;
    }
}
