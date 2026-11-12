void main(){
    //double cropArea = 75.0;
    //double totalArea = 250.0;

    //print(cropArea > 100);
    //print(cropArea < totalArea);
    //print(cropArea == totalArea);
    //print(cropArea != totalArea);
    //print(cropArea >= 75.0);
    //print(cropArea <= 74.0);    
    
 //guardar el resultado de la comparacion
 //double area = 150.0;

 //bool isPositive = area > 0;
 //bool isAtLeastOneHundred = area >= 100;

 //print('Positive: $isPositive');
 //print('At least 100: $isAtLeastOneHundred');   


 // igualdad de cadenas
 //String firstCrop = 'Coffee';
 //String secondCrop = 'coffee';

 //print(firstCrop == secondCrop);
 //print(firstCrop.toLowerCase() == secondCrop.toLowerCase());


 //combinar condiciones
 //double area = 120.0;
 //int year = 2025;
 //bool isPreliminary = false;

 //bool meetsBoth = area > 0 && year >= 2000;
 //bool requiresReview = area <= 0 || isPreliminary;
 //bool isFinal = !isPreliminary;

 //print(meetsBoth);
 //print(requiresReview);
 //print(isFinal);

 
  //bool hasName = true;
  //bool hasPositiveArea = false;

  //print(hasName && hasPositiveArea);
  //print(hasName || hasPositiveArea);
  //print(!hasName);

 
  //int observationYear = 2025;
  //bool matchesYear = observationYear == 2025;//coreccion de error ==

  //print(matchesYear);

  String municipality = 'Chia';
  double plantedArea = 15.0;
  int observationYear = 2025;

  bool isUsable = municipality.trim().isNotEmpty && plantedArea > 0 && observationYear > 0;
  print("Test one: $isUsable");

  municipality = '  ';
  plantedArea = 15.0;
  observationYear = 2025;

  isUsable = municipality.trim().isNotEmpty && plantedArea > 0 && observationYear > 0;
  print("Test two: $isUsable");

  municipality = 'Bogota';
  plantedArea = 0;
  observationYear = 2025;

  isUsable = municipality.trim().isNotEmpty && plantedArea > 0 && observationYear > 0;
  print("Test three: $isUsable");


municipality = 'Medellin';
  plantedArea = 5.0;
  observationYear = -0;

  isUsable = municipality.trim().isNotEmpty && plantedArea > 0 && observationYear > 0;
  print("Test four: $isUsable");

  municipality = 'Tunja';
  plantedArea = 2.5;
  observationYear = 2024;
  
  isUsable = municipality.trim().isNotEmpty && plantedArea > 0 && observationYear > 0;
  print("Test five: $isUsable");
}
