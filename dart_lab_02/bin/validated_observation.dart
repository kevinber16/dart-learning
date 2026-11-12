import 'dart:io';
int? readIntInRange(String prompt, int minimum, int maximum) {
  while (true) {
    stdout.write(prompt);
    String? rawInput = stdin.readLineSync();

    if (rawInput == null) {
      print('Input ended.');
      return null;
    }

    int? value = int.tryParse(rawInput.trim());

    if (value != null && value >= minimum && value <= maximum) {
      return value;
    }

    print('Enter an integer from $minimum to $maximum.');
  }
}
void main () {
    String? cropName = readNonEmptyText('Ingrese el nombre del cultivo: ');
    if (cropName == null) return;

    int? year = readIntInRange(
        'Ingrese el año de observación (2000-2020): ',
        2000,
        2020,
    );
    if (year == null) return;

    double? area = readPositiveFiniteDouble('Ingrese el área en hectareas: ');
    if (area == null) return;

    print('\n--- Registro Validado ---');
    print('Cultivo: $cropName');
    print('Año: $year');
    print('Area: $area');
}

String? readNonEmptyText(String prompt){

    while (true){
        stdout.write(prompt);
        String? input = stdin.readLineSync();
        if (input == null) return null;

        String trimmed = input.trim();
        if (trimmed.isNotEmpty){
            return trimmed;
        }
        print('Error: El texto no puede estar vacio.');
    }
}
int? readIntRange(String prompt, int min, int max){
    while (true){
        stdout.write(prompt);
        String? input = stdin.readLineSync();
        if (input == null) return null;

        int? value = int.tryParse(input.trim());
        if (value != null && value >= min && value <= max){
            return value;
        }
        print('Error: Ingrese un numero entero entre $min y $max.');
    }
}

double? readPositiveFiniteDouble(String promt){
    while (true){
        stdout.write(promt);
        String? input = stdin.readLineSync();
        if (input == null) return null;

        double? value = double.tryParse(input.trim());
        if (value != null && value.isFinite && value > 0){
            return value;
        }
        print('Error: Ingrese un area numerica positiva y finita');
    }
}