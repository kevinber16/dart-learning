//void showTitle() {
//  print('============================');
//  print('     AGRICULTURAL REPORT');
//  print('============================');
//}

//void main() {
  //showTitle();
  //print('First observation');
  //showTitle();
//}

//2. Parámetros y argumentos
//void showCrop(String crop, double plantedArea) {
  //print('Crop: $crop');
  //print('Area: $plantedArea ha');
//}

//void main() {
  //showCrop('Coffee', 125.5);
  //showCrop('Plantain', 74.5);
//}

//3. Devolver un valor con return

//double calculateTotalArea(double firstArea, double secondArea) {
  //return firstArea + secondArea;
//}
//void main() {
  //double total = calculateTotalArea(125.5, 74.5);
  //print(total);
//}

//4. Una función para calcular porcentajes
//double calculateShare(double cropArea, double totalArea) {
  //return (cropArea / totalArea) * 100;
//}

//void main() {
  //double share = calculateShare(50.0, 250.0);
  //print(share.toStringAsFixed(1));
//}

//5. Variables locales y responsabilidades
//double calculateAverage( double totalArea, int cropCount){
  //double result = totalArea / cropCount;
  //return result;
//}
//void main() {
  //double average = calculateAverage(250.0, 3);
  //print(average.toStringAsFixed(2));
//}

//Ejercicios — Funciones pequeñas

void main(){
    double total1 = calculateTotalArea(120.0, 80.0, 100.0);
    double promedio1 = calculateAverage(total1, 3);

    print('====primer cultivo====');
    print('Total: $total1 hectáreas');
    print('promedio: $promedio1 hectáreas');

    showObservation("Chia", "Maiz", 120.0);


    double total2 = calculateTotalArea(200.0, 100.0, 70.0);
    double promedio2 = calculateAverage(total2, 3);

    print('====segundo cultivo====');
    print('Total: $total2 hectáreas');
    print('promedio: $promedio2 hectáreas');

    showObservation("Zipaquira", "Café", 200.0);
}


    double calculateTotalArea(double first, double second, double third) {
      return first + second + third;
    }

    double calculateAverage(double total, int count) {
      return total / count;
    }

    void showObservation(String municipaly, String crop, double area) {
      print("=====Ficha del cultivo===== ");
      print("Municipio: $municipaly");
      print("Cultivo: $crop");
      print("Área: $area hectáreas");
    }
