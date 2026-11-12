import 'dart:io';

int? readIntInRange(String prompt, int minimum, int maximum) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input == null) return null;

    int? value = int.tryParse(input.trim());
    if (value != null && value >= minimum && value <= maximum) {
      return value;
    }
    print('Error: Ingrese un número entero entre $minimum y $maximum.');
  }
}

int? readPositiveInt(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input == null) return null;

    int? value = int.tryParse(input.trim());
    if (value != null && value > 0) {
      return value;
    }
    print('Error: Ingrese una cantidad entera positiva.');
  }
}

void main() {
  const int initialCapacity = 40;
  const int generalPrice = 18000;
  const int studentPrice = 12000;

  int availableSeats = initialCapacity;
  int generalTicketsSold = 0;
  int studentTicketsSold = 0;
  int totalRevenue = 0;

  print('====================================');
  print('       SISTEMA DE VENTAS CINE');
  print('====================================');

  while (true) {
    print('\n1. Vender entradas');
    print('2. Consultar resumen de ventas');
    print('0. Salir');

    int? option = readIntInRange('Opción: ', 0, 2);

    if (option == null || option == 0) {
      print('¡Hasta pronto!');
      return;
    }

    switch (option) {
      case 1:
        if (availableSeats == 0) {
          print('Sala llena: No quedan asientos disponibles.');
          break;
        }

        print('\nSeleccione tipo de entrada:');
        print('1. General (\$18.000)');
        print('2. Estudiante (\$12.000)');
        int? ticketType = readIntInRange('Tipo: ', 1, 2);
        if (ticketType == null) return;

        int quantity = 0;
        while (true) {
          int? requested = readPositiveInt(
            'Cantidad de asientos (Disponibles: $availableSeats): ',
          );
          if (requested == null) return;

          if (requested <= availableSeats) {
            quantity = requested;
            break;
          }
          print(
            'Error: Solo quedan $availableSeats asientos disponibles. Intente con una cantidad menor.',
          );
        }

        int unitPrice = (ticketType == 1) ? generalPrice : studentPrice;
        int saleTotal = quantity * unitPrice;

        // Actualizar estado solo después de validar la venta completa
        availableSeats -= quantity;
        totalRevenue += saleTotal;
        if (ticketType == 1) {
          generalTicketsSold += quantity;
        } else {
          studentTicketsSold += quantity;
        }

        print('Venta exitosa. Total a pagar: \$$saleTotal');

      case 2:
        int totalSold = generalTicketsSold + studentTicketsSold;
        print('\n--- Resumen de Ventas ---');
        print('Capacidad inicial: $initialCapacity asientos');
        print('Asientos vendidos: $totalSold');
        print('Asientos disponibles: $availableSeats');
        print('Entradas General vendidas: $generalTicketsSold');
        print('Entradas Estudiante vendidas: $studentTicketsSold');
        print('Dinero total recaudado: \$$totalRevenue');

      default:
        print('Opción desconocida.');
    }
  }
}