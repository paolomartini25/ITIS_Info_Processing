Matrice m;
Quadretto q;
public void settings(){
  size(600, 600); //dimensione della finestra
}

public void setup(){
  m = new Matrice(10,10);
}

public void draw(){ 
  background(230, 230, 230);
  m.draw();
}

public void mousePressed(){
  m.ePremuto(mouseX, mouseY); 
}
