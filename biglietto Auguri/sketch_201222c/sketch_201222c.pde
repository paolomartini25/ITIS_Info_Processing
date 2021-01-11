Stringa s;
Albero a;

public void settings(){
  size(640, 360); //dimensione della finestra
}

public void setup(){
  
  background(#B4FAF0);
  s = new Stringa(10, 75, "Auguri e Buone Feste!");
  a = new Albero(width/2, 250, 3); //ascisse, ordinate, numero di triangoli
}

public void draw(){ 
  a.show();
  s.show();//crea la stringa : Auguri e Buone Feste!
}
