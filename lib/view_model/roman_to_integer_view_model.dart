import 'package:flutter/material.dart';

class RomanToIntegerViewModel extends ChangeNotifier {
  String integerText = "";
  TextEditingController textEditingController = TextEditingController(text: '');
  final Map<String, int> oneDigitRomanMap = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };
  final Map<String, int> twoDigitRomanMap = {
    "IV": 4,
    "IX": 9,
    "XL": 40,
    "XC": 90,
    "CD": 400,
    "CM": 900,
  };
  romanToInteger() {
    if (textEditingController.text.isEmpty) {
      integerText = "";
    } else {
      List<String> splittedRoman =
          textEditingController.text.toUpperCase().split("");
      int result = 0;
      int i = 0;
      while (i < splittedRoman.length) {
        String oneDigitString = splittedRoman[i];
        String? twoDigitString = splittedRoman.length != i + 1
            ? splittedRoman[i] + splittedRoman[i + 1]
            : null;
        if (twoDigitRomanMap.keys.toList().contains(twoDigitString)) {
          result += twoDigitRomanMap[twoDigitString] ?? 0;
          i += 2;
        } else {
          result += oneDigitRomanMap[oneDigitString] ?? 0;
          i += 1;
        }
      }

      integerText = result.toString();
    }
    notifyListeners();
  }
}
