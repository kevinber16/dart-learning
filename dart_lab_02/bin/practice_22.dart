import 'dart:io';

String classifyShare(double share) {
    if (!share.isFinite || share < 0 || share > 100){
        return 'Invalid share';
    } else if (share <= 25){
        return 'Low share';
    } else if (share <= 50){
        return 'Moderate share';
    } else if (share <= 75){
        return 'High share';
    } else {
        return 'Very high share';
    }

}

void main() {
 // double area = 12.0;

  //if (area > 0) {
    //print('Area is positive.');
  //}

  //double area = 0.0;

  //if (area >= 0) {
    //print('Area is positive.');
  //} else {
    //print('Area cannot be negative.');
  //}



  //stdout.write('Municipality: ');
  //String municipality = (stdin.readLineSync() ?? '').trim();

  //if (municipality.isEmpty) {
    //print('Municipality is required.');
  //} else {
    //print('Municipality: $municipality');
  //}

  //double largestShare = 62.5;

  //if (largestShare >= 75) {
    //print('Very high share.');
  //} else if (largestShare >= 50) {
    //print('High share.');
  //} else if (largestShare >= 25) {
    //print('Moderate share.');
  //} else {
    //print('Low share.');
  //}


   //double cropArea = 0.0;
  //double totalArea = 0.0;

  //if (totalArea > 0) {
    //double share = cropArea / totalArea * 100;
    //String formattedShare = share.toStringAsFixed(2);
    //print('Share: $formattedShare%');
  //} else {
    //print('Total area must be positive.');
  //}

   //String municipality = 'Andes';
  //double area = 30.0;

  //if (municipality.isNotEmpty && area > 0) {
    //print('Accepted.');
  //}

 //double area = -10.0;

  //if (area > 0)
  //{
    //print('Area accepted.');
  //}

  print('-1: ${classifyShare(-1)}');
  print('0: ${classifyShare(0)}');
  print('25: ${classifyShare(25)}');
  print('50: ${classifyShare(50)}');
  print('75: ${classifyShare(75)}');
  print('100: ${classifyShare(100)}');
  print('101: ${classifyShare(101)}');

}