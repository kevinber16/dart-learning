//1. while: comprobar antes de repetir
import 'dart:io';

double? readPositiveArea(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? rawInput = stdin.readLineSync();

    if (rawInput == null) {
      print('Input ended.');
      return null;
    }

    double? value = double.tryParse(rawInput.trim());

    if (value != null && value.isFinite && value > 0) {
      return value;
    }

    print('Enter a positive finite area.');
  }
}

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

String? readRequiredText(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? rawInput = stdin.readLineSync();

    if (rawInput == null) {
      print('Input ended.');
      return null;
    }

    String value = rawInput.trim();

    if (value.isNotEmpty) {
      return value;
    }

    print('A non-empty value is required.');
  }
}
void main(){
 //   int attempts = 3;

   // while (attempts <= 6){
     //   print('Attempt $attempts');
       // attempts++;
    //}

    //2. do while: repetir antes de comprobar
   // int attempts = 1;

    //do{
      //  print('Attempt $attempts');
        //} while (attempts <= 3);
    
    //3. Validar conversiones con tryParse
//int? validNumber = int.tryParse('12');
  //int? invalidNumber = int.tryParse('abc');

  //print(validNumber);
  //print(invalidNumber);
    
   // double? area = double.tryParse('abc');

  //if (area == null) {
    //print('Invalid number.');
  //} else {
    //print('Area: $area ha');
  //}

  //4. No aceptar NaN ni valores infinitos

   //double? area = double.tryParse('3');

  //if (area == null || !area.isFinite || area <= 0) {
    //print('Enter a positive finite area.');
  //} else {
    //print('Accepted area: $area');
  //}

   String? municipality = readRequiredText('Municipality: ');

  if (municipality == null) {
    return;
  }

  print('Municipality: $municipality');
}