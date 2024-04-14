// menor a cero 
int a=2,b=-4,c=2;


// mayor a cero
//int a = 1, b = -1, c = -6;

float discriminante = pow(b, 2) - 4 * a * c;
float x1, x2;

int discriminanteBandera;

if (discriminante > 0) {
    discriminanteBandera = 1;
} else if (discriminante == 0) {
    discriminanteBandera = 0;
} else {
    discriminanteBandera = -1;
}

switch (discriminanteBandera) {
    case 1:
        println("mayor a cero");
        x1 = (-b + pow(discriminante, 0.5)) / (2 * a);
        x2 = (-b - pow(discriminante, 0.5)) / (2 * a);
        println("Las raices son: " + x1 + " y " + x2);
        break;
    case 0:
        println("igual a cero");
        x1 = (-b + pow(discriminante, 0.5)) / (2 * a);
        println("La raiz unica es: " + x1);
        break;
    case -1:
        println("Raices no reales");
        break;
}
