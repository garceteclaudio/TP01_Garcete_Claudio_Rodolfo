
 int lineaX = 0;
 int lineaY = 100;
 int circuloY = 75;
 int circuloX = 0;
 int distanciaCirculo = 30;

 
void setup(){
 size(600,600);
}

void draw() {
  dibujar_lineas_y_circulos();
}// fin draw

public void dibujar_lineas_y_circulos(){
 strokeWeight(2);
 stroke(#008DFC);

 do{
   circuloX = distanciaCirculo;
   line(lineaX,lineaY,width,lineaY);
  
   
   do{
      fill(random(255), random(255), random(255)); 
      strokeWeight(2);
      ellipse(circuloX,circuloY,50,50);
      
      //fill(random(255), random(255), random(255)); 
      //ellipse(circuloX,275,50,50);

      circuloX += distanciaCirculo*2;
   }while(circuloX < width);
   
   
   lineaY += 100;
   circuloY += 200;
   
 }while(lineaY<=height);
}
