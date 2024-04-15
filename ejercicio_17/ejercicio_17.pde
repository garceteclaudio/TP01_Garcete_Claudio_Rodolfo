int x1 = 1, y1 = 1; // Coordenadas del punto 1 (Link)
int x2 = 100, y2 = 100; // Coordenadas del punto 2 (Tesoro)
int tamLink = 30; // Tamaño del círculo que representa a Link
int tamTesoro = 30; // Tamaño del cuadrado que representa al tesoro
void setup() {
  size(400, 400);
}
void draw() {
  background(135, 206, 250);
  // Dibujar el tesoro (cuadrado)
  fill(0, 0, 255); // Azul
   //     x, y, ancho, alto     
  rect(x2, y2, tamTesoro, tamTesoro);
  // Dibujar Link (círculo)
  fill(255, 0, 0); // Rojo
  ellipse(x1, y1, tamLink, tamLink);
  // Calcular la distancia entre Link y el tesoro
  float distancia = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
  
  // Verificar si Link está cerca del tesoro
  if (distancia <= 50) {
    fill(0, 0, 255);
    textSize(20);
    textAlign(CENTER);
    text("Tesoro encontrado", width/2, height - 50);
  }
  //texto de coordenadas mostradas en pantalla
  String coordenadas = "X1: " + mouseX;
  fill(0);
  textSize(20);
  textAlign(RIGHT, TOP);
  text(coordenadas, width, 0);
  
  String coordenadasY = "Y1= "+ mouseY;
  fill(0);
  textSize(20);
  textAlign(RIGHT, TOP);
  text(coordenadasY, width, 30);
  
  String distanciaTexto = "distancia: " + distancia;
  fill(0);
  textSize(20);
  textAlign(RIGHT, TOP);
  text(distanciaTexto, width,50);
}

void mouseMoved() {
  // Mover Link con el mouse
  x1 = mouseX; // Escalar la posición del mouse
  y1 = mouseY;
}
