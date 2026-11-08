void main(){
    String municipality = "Far Far Away";
    String crop = "Maize";
    int observationYear = 2026;
    double plantedArea = 125.5;
    bool isPreliminary = true;

    print(municipality);
    print(crop);
    print(observationYear);
    print(plantedArea);
    print(isPreliminary);

    plantedArea = 130.75; // cambiando el valor de plantedArea

    print(plantedArea); // mostrando el nuevo valor de plantedArea

    int cropCount = 3;
    cropCount = 4;

    print(cropCount);   


    // ejercicio hectareas
    print("Ejercicio hectareas");
    print("");
    double hectarea = 80.0;
    print(hectarea);
    print("Superficie corregida:");
    print("");  
    hectarea = 82.5;
    print(hectarea); 


//3. Inferencia de tipos con var
    var department = "Antioquia";
    var cropCount2 = 3;
    var averageArea = 42.5;

    print(department.runtimeType); // Muestra el tipo de dato inferido
    print(cropCount2.runtimeType); // Muestra el tipo de dato inferido
    print(averageArea.runtimeType); // Muestra el tipo de dato inferido


//4. final y const: valores que no se reasignan
final municipality_ = "Andes";
const areaUnit = "ha";

print(municipality_);
print(areaUnit);

 final startedAt = DateTime.now();
  const reportTitle = 'Agricultural observation';

  print(startedAt);
  print(reportTitle);

  var cropp = 'Beans';
  double area = 12.5;

  print('cropp');
  print('area');

//reto ficha de un cultivo 


  const String areaunit = "hectáreas";

  
  String departmento = "Cundinamarca";
  String municipio = "Chía";
  String croppp = "Maíz";
  int observationyear = 2026;
  double plantedarea = 125.5;
  bool ispreliminary = true;

  
  print("===== FICHA DEL CULTIVO =====");
  print("Departamento: $departmento");
  print("Municipio: $municipio");
  print("Cultivo: $croppp");
  print("Año de observación: $observationyear");
  print("Área sembrada: $plantedarea $areaunit");
  print("¿Datos preliminares?: $ispreliminary");

 
  plantedarea = 150.75;
  isPreliminary = false;

  
  print("\n===== FICHA ACTUALIZADA =====");
  print("Departamento: $departmento");
  print("Municipio: $municipio");
  print("Cultivo: $croppp");
  print("Año de observación: $observationyear");
  print("Área sembrada: $plantedarea $areaUnit");
  print("¿Datos preliminares?: $isPreliminary");


}