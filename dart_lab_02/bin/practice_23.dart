
import 'dart:io';

String getOptionName(String option) {
  switch (option) {
    case '1':
      return 'Register';
    case '2':
      return 'Summary';
    case '0':
      return 'Exit';
    default:
      return 'Unknown';
  }
}
void main() {
  //int option = 9;

  //switch (option) {
    //case 1:
      //print('Register observation.');
    //case 2:
      //print('View summary.');
    //case 0:
      //print('Exit.');
    //default:
      //print('Unknown option.');
  //}

  //String format = 'detailed';

  //switch (format) {
    //case 'compact':
      //print('One-line summary.');
    //case 'detailed':
      //print('Detailed summary.');
    //default:
      //print('Unsupported format.');
  //}

//print('1. Register');
  //print('2. Summary');
  //print('0. Exit');
  //stdout.write('Option: ');

  //String option = (stdin.readLineSync() ?? '').trim();

  //switch (option) {
    //case '1':
      //print('Register selected.');
    //case '2':
      //print('Summary selected.');
    //case '0':
      //print('Exit selected.');
    //default:
      //print('Invalid option.');
  //}
    //print(getOptionName('1'));
  //print(getOptionName('2'));
  //print(getOptionName('0'));

   //String option = '2';

  //String label = switch (option) {
    //'1' => 'Register',
    //'2' => 'Summary',
    //'0' => 'Exit',
    //_ => 'Unknown',
  //};

  //print(label);
  


  //String option = '2';

  //switch (option) {
    //case '1':
      //print('Register');
    //case '2':
      //print('Summary');
    //default:
      //print('Unknown');
  //}


//Reto — Menú de secciones
  String option = 'b';
   switch (option) {
    case 'a':
      print('registrarse');
    case 'b':
      print('iniciar sesión');
    case 'c':
      print('salir');
    case 'q':
      print('asistente personal');
    default:
      print('valor desconocido');
   }
}
//switch conviene cuando 
//necesitamos comparar una variable 
//o expresión con diferentes valores posibles.

//default es el caso que se ejecuta cuando ninguno 
//de los otros casos coincide con el valor evaluado.
//Diferencia entre una instrucción switch y una expresión switch
//Una instrucción switch se utiliza para ejecutar un bloque de código
//basado en el valor de una variable o expresión, mientras que una expresión switch
//se utiliza para evaluar un valor y devolver un resultado basado en ese valor.