Albero[] array;

//Albero a;
Foresta f;
StellaDinamica s;
Luce l;
CatenadiLuci c;
private final static int N = 3;

public void settings(){
  size(640, 360); //dimensione della finestra
}

public void setup(){
  array = new Albero[N];
  background(#B4FAF0);
  try{
    f = new Foresta(4);
  } catch (Exception e) {
    System.out.println(e.getMessage());
  }
  s = new StellaDinamica(); //inizio 100, 40; fine 540, 40
  c = new CatenadiLuci(4);
  
}

public void draw(){ 

  try{
    s.draw();
  } catch (Exception e) {
    System.out.println(e.getMessage());
    delay(10000);
  }
  f.draw();
  c.draw();
}

public void mousePressed(){
 c.ePremuto(mouseX, mouseY); 
}
