/*
Paolo Martini
4^b Robotica
Esercizio dello Snake
*/

ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>(); //ArrayList = array con dimensione dinamica

int w = 45, h = 36, bs = 22, dir = 2, cibox = 12, ciboy = 10, punteggio = 0;

int[] dx = {0,0,1,-1}, dy = {1,-1,0,0};

boolean sconfitta = false;
boolean start = false;
PImage immagine;

void setup(){
  size(990, 792); //1000 = w*bs = 50*20, 800 = h*bs = 40*20
  x.add(5);// add aggiunge un valore all'arraylist
  y.add(5);
  immagine = loadImage("images.png");
}

void draw(){

  if (start){
    background(230,210,0);
    //creazione delle righe orizzontali
    for(int i=0; i < w; i++){
      stroke(236,236,5);
      line(i*bs, 0, i*bs, height);
    }
    
    //creazione delle righe verticali
    for(int i=0; i < h; i++){
      stroke(236,236,5);
      line(0, i*bs, width, i*bs);
    }
    
    for(int i=0; i < x.size(); i++){ //size = numero di celle dell'arraylist
      fill(30, 160, 70);
      rect(x.get(i)*bs, y.get(i)*bs, bs, bs); 
    }
    if(!sconfitta){
      fill(0,255,0);
      rect(cibox*bs, ciboy*bs, bs, bs);
      
      if(frameCount%7 == 0){ //%10 lento %5 veloce
        x.add(0, x.get(0) + dx[dir]); //get prende un valore dall'array list, (0) nella cella 0
        y.add(0, y.get(0) + dy[dir]);
        
        if (x.get(0)<0 || y.get(0)<0 || x.get(0)>=w || y.get(0)>=h) sconfitta = true;
        for(int i=1; i < x.size(); i++){
          if(x.get(0) == x.get(i) && y.get(0) == y.get(i)) sconfitta = true;
        }
        
        if (x.get(0) == cibox && y.get (0) == ciboy){
          cibox = (int)random(0,w);
          ciboy = (int)random(0,h);
          punteggio++;
        }
        else{
          x.remove(x.size()-1); //remove rimuove una cella di memoria del numero contenuto tra parentesi
          y.remove(y.size()-1); //in questo caso rimuove l'ultima cella di memoria poichè si creerebbe una coda infinita
        }
      }
    }
    else{
      
      background(230,210,0);
      fill(0); //scritta di colore nero
      textSize(30); // dimensione della scritta
      textAlign(CENTER); // allineamento centrale
      text("HAI PERSO. Premi la barra spaziatrice per continuare", width/2, height/2-100);
      text("Punteggio:", width/2, height/2);
      text(punteggio, width/2, height/2+100);
      if(keyPressed&&key==' '){
        x.clear(); //clear ripulisce l'arraylist
        y.clear(); //in pratica resettiamo la coda dell'arraylist
        x.add(5);
        y.add(5);
        dir=2;
        punteggio=0;
        sconfitta = false;
      }
    }
  }
  else{
    background(31,31,31);
    imageMode(CENTER);
    image(immagine, width/2, height/2-100);
    fill(230,210,0); //scritta di colore nero
    textSize(30); // dimensione della scritta
    textAlign(CENTER); // allineamento centrale
    text("Premi la barra spaziatrice per giocare", width/2, height/2+100);
    
    if(keyPressed&&key==' '){
    start = true;
    }
  
  }
}

void keyPressed(){
  switch(key){
    case 's':
      if (dir != 1) dir = 0;
      break;
    
    case 'w':
      if (dir != 0) dir = 1;
      break;
    
    case 'a':
      if (dir != 2) dir = 3;
      break;
    
    case 'd':
      if (dir != 3) dir = 2;
      break;
  }
}
