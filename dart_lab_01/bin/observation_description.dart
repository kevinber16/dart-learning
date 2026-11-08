import 'dart:io';
void main(){
    stdout.write('Digite su departamento: ');
    String departament = stdin.readLineSync() ?? '';

     stdout.write('Digite su municipio: ');
     String municipio = stdin.readLineSync() ?? '';

     stdout.write('Digite su cultivo: ');
     String cultivo = stdin.readLineSync() ?? '';

    stdout.write('Digite el año: ');  
    String yearText = stdin.readLineSync() ?? '';
    double year = double.parse(yearText);

    stdout.write('Digite el area sembrada: ');  
    String areaText = stdin.readLineSync() ?? '';
    double area = double.parse(areaText);

    print('Departamento: $departament');
    print('Municipio: $municipio');
    print('Cultivo: $cultivo');
    print('Año: $year');
    print('Área sembrada: $area');

 
}