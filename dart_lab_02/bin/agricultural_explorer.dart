import 'dart:io';

String? readRequiredText(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input == null) return null;

    String trimmed = input.trim();
    if (trimmed.isNotEmpty) {
      return trimmed;
    }
    print('Error: Input cannot be empty.');
  }
}

int? readIntInRange(String prompt, int minimum, int maximum) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input == null) return null;

    int? value = int.tryParse(input.trim());
    if (value != null && value >= minimum && value <= maximum) {
      return value;
    }
    print('Error: Enter an integer between $minimum and $maximum.');
  }
}

double? readPositiveArea(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input == null) return null;

    double? value = double.tryParse(input.trim());
    if (value != null && value.isFinite && value > 0) {
      return value;
    }
    print('Error: Enter a positive finite area.');
  }
}

double calculateShare(double area, double totalArea) {
  return area / totalArea * 100;
}

void main() {
  bool hasSummary = false;

  String latestMunicipality = '';
  int latestYear = 0;
  int latestCropCount = 0;
  double latestTotalArea = 0.0;
  double latestLargestArea = 0.0;
  String latestLargestCrop = '';

  print('================================');
  print('       AGRODIVERSA CONSOLE');
  print('================================');

  while (true) {
    print('\n1. Register observation');
    print('2. View latest summary');
    print('0. Exit');

    int? option = readIntInRange('Option: ', 0, 2);

    if (option == null || option == 0) {
      print('Goodbye!');
      return;
    }

    switch (option) {
      case 1:
        String? municipality = readRequiredText('Municipality: ');
        if (municipality == null) {
          return;
        }

        int? year = readIntInRange('Year (2000-2100): ', 2000, 2100);
        if (year == null) {
          return;
        }

        int? cropCount = readIntInRange('Crop count (1-5): ', 1, 5);
        if (cropCount == null) {
          return;
        }

        double totalArea = 0.0;
        double largestArea = 0.0;
        String largestCrop = '';

        for (int index = 1; index <= cropCount; index++) {
          String? cropName = readRequiredText('Crop $index name: ');
          if (cropName == null) {
            return;
          }

          double? area = readPositiveArea('Crop $index area (ha): ');
          if (area == null) {
            return;
          }

          totalArea += area;

          if (area > largestArea) {
            largestArea = area;
            largestCrop = cropName;
          }
        }

        latestMunicipality = municipality;
        latestYear = year;
        latestCropCount = cropCount;
        latestTotalArea = totalArea;
        latestLargestArea = largestArea;
        latestLargestCrop = largestCrop;
        hasSummary = true;

        print('Observation saved in memory.');
      case 2:
        if (!hasSummary) {
          print('No observation has been registered.');
        } else {
          double averageArea = latestTotalArea / latestCropCount;
          double largestShare = calculateShare(
            latestLargestArea,
            latestTotalArea,
          );

          print('\nMunicipality: $latestMunicipality');
          print('Year: $latestYear');
          print('Crops processed: $latestCropCount');
          print('Total area: ${latestTotalArea.toStringAsFixed(2)} ha');
          print('Average area: ${averageArea.toStringAsFixed(2)} ha');
          print('Largest crop: $latestLargestCrop');
          print('Largest area: ${latestLargestArea.toStringAsFixed(2)} ha');
          print('Largest share: ${largestShare.toStringAsFixed(2)}%');
        }
      default:
        print('Unknown option.');
    }
  }
}