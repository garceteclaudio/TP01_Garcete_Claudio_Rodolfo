// Ejercicio 12

String nombreIngresado = "";
String mensajeSaludo = "";

void setup() {
  size(400, 200);
  textSize(32);
  textAlign(CENTER, CENTER);
  println("Ingresa tu nombre: ");
}

void draw() {
  background(0);
  text(nombreIngresado, width/2, height/2);
  text(mensajeSaludo, width/2, height/2 + 40);
}

//  keyPressed: se ejecuta automáticamente cada vez que se presiona una tecla mientras la ventana de la aplicación tiene el foco
void keyPressed() {
  if (key != '\n') { //verifica si la tecla presionada no es la tecla "Enter" 
    nombreIngresado += key;
  } else {// Si presiono enter key == '\n'
    generarSaludo();
  }
}

void generarSaludo() {
  mensajeSaludo = "Hola " + nombreIngresado;
  println(mensajeSaludo);
}
