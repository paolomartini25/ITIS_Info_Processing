Albero a;
StellaDinamica s;

public void settings(){
  size(640, 360); //dimensione della finestra
}

public void setup(){
  
  background(#B4FAF0);
  a = new Albero(); //ascisse, ordinate, numero di triangoli
  s = new StellaDinamica(); //inizio 100, 40; fine 540, 40
}

public void draw(){ 
  
  try{
    s.show();
    a.show(width*1/3, 250, 3);
    a.show(width*2/3, 250, 3);
  } catch (Exception e) {
    System.out.println(e.getMessage());
    delay(10000);
  }
}
