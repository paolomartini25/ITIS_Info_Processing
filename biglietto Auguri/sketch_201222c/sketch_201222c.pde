Cerchio c;
Stringa s;
Linea l;
Triangolo t;
Rettangolo r;

public void settings(){
  size(640, 360); //dimensione della finestra
}

public void setup(){
  background(180,250,240);
  t = new Triangolo();
  r = new Rettangolo();
  l = new Linea();
  s = new Stringa();
  c = new Cerchio();
}

public void draw(){

  s.show();//crea la stringa : Auguri e Buone Feste!
  r.show(); //crea il tronco
  t.show(0, 0); //crea il primo triangolo, quello sullo sfondo
  t.show(30, 5); // crea il secondo triangolo, quello sul secondo piano
  t.show(60, 10); // crea il terzo triangolo, quello in primo piano
  c.show(310, 250); //pallina 1
  c.show(330, 260); //pallina 2
  c.show(350, 250); //pallina 3
  c.show(330, 280); //pallina 4
  c.show(350, 290); //pallina 5
  c.show(310, 290); //pallina 6
  c.show(330, 190); //pallina 8
  c.show(330, 220); //pallina 9
  c.show(350, 230); //pallina 10
  c.show(310, 230); //pallina 11
  c.show(315, 205); //pallina 12
  c.show(345, 205); //pallina 13
  c.show(330, 170); //pallina 14
}
