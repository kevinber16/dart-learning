
import 'dart:io';

double calculateTotalArea(
  double firstArea,
  double secondArea,
  double thirdArea,
) {
  return firstArea + secondArea + thirdArea;
}


double calculateAverageArea(double totalArea, int cropCount) {
  return totalArea / cropCount;
}

double calculateAreaPorcentaje(double cropArea, double totalArea) {
  return (cropArea / totalArea) * 100;
}

void showReportHeader(String department, String municipality, int year) {
  print("\n========================================");
  print("       AGRICULTURAL OBSERVATION");
  print("========================================");
  print("Departamento: $department");
  print("Municipio: $municipality");
  print("Año: $year");
}

void main() {
  stdout.write("Departamento: ");
  String department = (stdin.readLineSync() ?? '').trim();

  stdout.write("Municipio: ");
  String municipality = (stdin.readLineSync() ?? '').trim();

  stdout.write("Año de observacion: ");
  int observationYear = int.parse(stdin.readLineSync() ?? '');

  stdout.write("Primer cultivo: ");
  String firstCrop = (stdin.readLineSync() ?? '').trim();

  stdout.write("Area del primer cultivo: ");
  double firstArea = double.parse(stdin.readLineSync() ?? '');

  stdout.write("Segundo cultivo: ");
  String secondCrop = (stdin.readLineSync() ?? '').trim();

  stdout.write("Area del segundo cultivo: ");
  double secondArea = double.parse(stdin.readLineSync() ?? '');

  stdout.write("Tercer cultivo: ");
  String thirdCrop = (stdin.readLineSync() ?? '').trim();

  stdout.write("Area del tercer cultivo: ");
  double thirdArea = double.parse(stdin.readLineSync() ?? '');

  double totalArea = calculateTotalArea(firstArea, secondArea, thirdArea);

  double averageArea = calculateAverageArea(totalArea, 3);

  double firstPorcentaje = calculateAreaPorcentaje(firstArea, totalArea);
  double secondPorcentaje = calculateAreaPorcentaje(secondArea, totalArea);
  double thirdPorcentaje = calculateAreaPorcentaje(thirdArea, totalArea);

  showReportHeader(department, municipality, observationYear);

  print("\n$firstCrop: ${firstArea.toStringAsFixed(2)} ha | Porcentaje: ${firstPorcentaje.toStringAsFixed(2)}%");
  print("$secondCrop: ${secondArea.toStringAsFixed(2)} ha | Porcentaje: ${secondPorcentaje.toStringAsFixed(2)}%");
  print("$thirdCrop: ${thirdArea.toStringAsFixed(2)} ha | Porcentaje: ${thirdPorcentaje.toStringAsFixed(2)}%");

  print("\nTotal registrado: ${totalArea.toStringAsFixed(2)} ha");
  print("Promedio por cultivo: ${averageArea.toStringAsFixed(2)} ha");

  print("\nDatos: ejemplo ficticio de aprendizaje.");
}
