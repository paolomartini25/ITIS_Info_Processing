Matrice m;
Quadretto q;
public void settings(){
  size(660, 360); //dimensione della finestra
}

public void setup(){
  m = new Matrice(22,12);
}

public void draw(){ 
  background(230, 230, 230);
  m.draw();
}

public void mousePressed(){
  m.ePremuto(mouseX, mouseY); 
}
