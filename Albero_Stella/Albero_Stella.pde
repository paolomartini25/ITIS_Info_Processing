Albero[] array;

Albero a;
StellaDinamica s;
private final static int N = 4;

public void settings(){
  size(640, 360); //dimensione della finestra
}

public void setup(){
  
  background(#B4FAF0);
  a = new Albero(); //ascisse, ordinate, numero di triangoli
  s = new StellaDinamica(); //inizio 100, 40; fine 540, 40
  array = new Albero[N];
}

public void draw(){ 
  
  try{
    s.show();
    for(int i = 0; i<N; i++){
      a.show(width*1/5*(i+1), 250, 3);
    }
  } catch (Exception e) {
    System.out.println(e.getMessage());
    delay(10000);
  }
}
