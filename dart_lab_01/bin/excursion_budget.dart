
import 'dart:io';

double calcularAlojamiento(double costoPorNoche, int noches) {
  return costoPorNoche * noches;
}

double calcularAlimentacion(double costoDiario, int dias, int viajeros) {
  return costoDiario * dias * viajeros;
}

double calcularPresupuestoTotal(
    double transporte, double alojamiento, double alimentacion) {
  return transporte + alojamiento + alimentacion;
}

double calcularPagoPorPersona(double total, int viajeros) {
  return total / viajeros;
}

double calcularParticipacionTransporte(double transporte, double total) {
  return (transporte / total) * 100;
}

void mostrarInforme(String destino, int viajeros, int dias, int noches) {
  print("\n====================================");
  print("       PRESUPUESTO DE EXCURSION");
  print("====================================");
  print("Destino: $destino");
  print("Cantidad de viajeros: $viajeros");
  print("Dias de viaje: $dias");
  print("Noches de alojamiento: $noches");
}

void main() {
  stdout.write("Destino: ");
  String destino = (stdin.readLineSync() ?? '').trim();

  stdout.write("Cantidad de viajeros: ");
  int viajeros = int.parse(stdin.readLineSync() ?? '');

  stdout.write("Dias de viaje: ");
  int dias = int.parse(stdin.readLineSync() ?? '');

  stdout.write("Noches de alojamiento: ");
  int noches = int.parse(stdin.readLineSync() ?? '');

  stdout.write("Costo total de transporte: ");
  double transporte = double.parse(stdin.readLineSync() ?? '');

  stdout.write("Costo de alojamiento por noche para todo el grupo: ");
  double costoAlojamiento = double.parse(stdin.readLineSync() ?? '');

  stdout.write("Costo diario de alimentacion por persona: ");
  double costoAlimentacion = double.parse(stdin.readLineSync() ?? '');

  double alojamiento = calcularAlojamiento(costoAlojamiento, noches);

  double alimentacion =
      calcularAlimentacion(costoAlimentacion, dias, viajeros);

  double presupuestoTotal =
      calcularPresupuestoTotal(transporte, alojamiento, alimentacion);

  double pagoPorPersona = calcularPagoPorPersona(presupuestoTotal, viajeros);

  double participacionTransporte =
      calcularParticipacionTransporte(transporte, presupuestoTotal);

  mostrarInforme(destino, viajeros, dias, noches);

  print("\n===== DESGLOSE DE COSTOS =====");

  print("Transporte: \$${transporte.toStringAsFixed(2)}");
  print("Alojamiento: \$${alojamiento.toStringAsFixed(2)}");
  print("Alimentacion: \$${alimentacion.toStringAsFixed(2)}");

  print("\n===== RESULTADOS =====");

  print("Presupuesto general: \$${presupuestoTotal.toStringAsFixed(2)}");
  print("Pago por persona: \$${pagoPorPersona.toStringAsFixed(2)}");

  print(
      "Participacion del transporte: ${participacionTransporte.toStringAsFixed(2)}%");

  print("\nPresupuesto de ejemplo ficticio.");
}
