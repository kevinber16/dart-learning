import 'dart:io';
void main() {
 // for (int index = 1; index <= 3; index++) {
   // print('Observation $index');
  //}

  //2. Contadores y acumuladores

  //int processedCrops = 0;
  //double totalArea = 0.0;

  //for (int index = 1; index <= 4; index++) {
    //processedCrops++;
    //totalArea += 12.5;
  //}

  //print('Crops: $processedCrops');
  //print('Total area: $totalArea ha');

  //3. Leer varias superficies desde la terminal

//double totalArea = 0.0;

  //for (int index = 1; index <= 3; index++) {
    //stdout.write('Area for crop $index (ha): ');
    //double area = double.parse(stdin.readLineSync() ?? '');
    //totalArea += area;
  //}

  //String formattedTotal = totalArea.toStringAsFixed(2);
  //print('Total area: $formattedTotal ha');

//promedio
   //const int cropCount = 4;
  //double totalArea = 0.0;

  //for (int index = 1; index <= cropCount; index++) {
    //totalArea += 12.5;
  //}

  //double averageArea = totalArea / cropCount;

  //print('Total area: $totalArea');
  //print('Average area: $averageArea');

//encontrar el mayor
//double largestArea = 0.0;

  //for (int index = 1; index <= 4; index++) {
    //double currentArea = index * 12.5;

    //if (currentArea > largestArea) {
      //largestArea = currentArea;
    //}

    //print('Area $index: $currentArea ha');
  //}

  //print('Largest area: $largestArea ha');


 ///for (int index = 1; index <= 5; index++) {
    //if (index == 2) {
      //continue;
    //}

    //if (index == 5) {
      //break;
    //}

    //print(index);
  //}

  //int cropCount = 3;
  //int processed = 0;

  //for (int index = 1; index <= cropCount; index++) {// correcion con el operador = 
    //processed++;
  //}

  //print(processed);

  stdout.write('Ingrese la cantidad de cultivos (1-5):');
  int quantity = int.parse(stdin.readLineSync()!);

  double totalArea = 0.0;
  double largestArea = 0.0;

  for (int index = 1; index <= quantity; index ++){
    stdout.write('Ingrese la superficie del cultivo $index: ');
    double currentArea = double.parse(stdin.readLineSync()!);

    totalArea += currentArea;

    if (currentArea > largestArea) {
      largestArea = currentArea;
    }
  }

  double average = totalArea / quantity;

  print('\nCultivos procesados: $quantity');
  print('Superficie total: $totalArea ha');
  print('Promedio por cultivo: $average ha');
  print('Mayor superficie: $largestArea ha ');



}