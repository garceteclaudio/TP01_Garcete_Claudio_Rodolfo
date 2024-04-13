PVector coordenadas;
int altoRec,anchoRec,distRec;

void setup(){
   size(440,420);
   distRec = 20;
   anchoRec= 40;
   altoRec= 20;
   coordenadas= new PVector(distRec,distRec); // Crea un vector en 2D con las coordenadas distRec
}

void draw(){
  background(#FFFF00); 
  fill(#C11010);
  stroke(#FCF32E);
  dibujarRecHorizontalYVertical();
}

void dibujarRecHorizontalYVertical(){
  for(float x=coordenadas.x;x<width;x+=(anchoRec+distRec)){
    for(float y=coordenadas.y;y<height;y+=(altoRec+distRec)){
      rect(x,y,anchoRec,altoRec);
    }
  }
}
