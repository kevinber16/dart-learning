void main(){
    //int a = 10;
    //int b = 3;

    //print(a + b); // Suma
    //print(a - b); // Resta
    //print(a * b); // Multiplicación
    //|print(a / b); // División (resultado en double)
    //print(a ~/ b); // División entera (resultado en int)
    //print(a % b); // Módulo (resto de la división)


    //2. Construir un cálculo por etapas
    //double coffeArea = 125.5;
    //double plantainArea = 74.5;
    //double avocadoArea = 50.0;

    //double totalArea = coffeArea + plantainArea + avocadoArea;
    //print(totalArea); 

    //3. Porcentaje de participación

    //double coffeArea = 75.0;
    //double totalArea = 300.0;

    //double coffeShare = (coffeArea / totalArea) * 100;
    //print(coffeShare); // Muestra el porcentaje de participación del café en el total de área

    //4. Orden de las operaciones
    //print(10 + 5 * 2); // Muestra 20, ya que la multiplicación tiene mayor prioridad
    //print((10 + 5) * 2); // Muestra 30, ya que los paréntesis cambian el orden de las operaciones

    //5. Números enteros, decimales y conversiones
    //int fields = 3;
    //double totalArea = 75.0;

    //double averageArea = totalArea / fields; // División que resulta en un double
    //print(averageArea.toStringAsFixed(2)); // Muestra el promedio con 2 decimales

  //String areaText = '125.5';
  //double plantedArea = double.parse(areaText);

  //print(plantedArea + 10.0);

    
//Reto — Resumen numérico
double cultivo1 = 120.0;
double cultivo2 = 80.0;
double cultivo3 = 50.0;

double total = cultivo1 + cultivo2 + cultivo3;
double promedio = total / 3;
double participacion = (cultivo1 / total) * 100;

print("======== Resumen numérico =======");
print("Total: ${total.toStringAsFixed(2)} hectáreas");
print("Promedio: ${promedio.toStringAsFixed(2)} hectáreas");
print("Participación: ${participacion.toStringAsFixed(2)}%");


//modificar un cultivo
cultivo1 = 150.0; // Modificando el valor de cultivo1

total = cultivo1 + cultivo2 + cultivo3;
promedio = total / 3;
participacion = (cultivo1 / total) * 100;

print("======== Resumen numérico =======");
print("Total: ${total.toStringAsFixed(2)} hectáreas");
print("Promedio: ${promedio.toStringAsFixed(2)} hectáreas");
print("Participación: ${participacion.toStringAsFixed(2)}%");
}