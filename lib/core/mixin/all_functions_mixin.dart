import 'package:leet/core/extension/extensions.dart';

mixin AllFunctionsMixin {
  bool isPalindrome(int x) {
    String stringX = x.toString();
    List<String> splittedStringX = stringX.split("");
    List<String> reveresdStringX = splittedStringX.reversed.toList();
    for (int index = 0; index < splittedStringX.length; index++) {
      if (splittedStringX[index] != reveresdStringX[index]) {
        return false;
      }
    }
    return true;
  }

  int romanToInt(String s) {
    List<String> splittedRoman = s.split("");
    int result = 0;
    int i = 0;
    while (i < splittedRoman.length) {
      String oneDigitString = splittedRoman[i];
      String? twoDigitString = splittedRoman.length != i + 1
          ? splittedRoman[i] + splittedRoman[i + 1]
          : null;
      if (twoDigitString != null) {
        result += twoDigitString.romanToIntExtension();
        i += 2;
      } else {
        result += oneDigitString.romanToIntExtension();
        i += 1;
      }
    }
    return result;
  }

  List<int> twoSumFunction(List<int> nums, int target) {
    List<int> sumsList = [];
    for (int index = 0; index < nums.length - 1; index++) {
      for (int secondIndex = index + 1;
          secondIndex < nums.length;
          secondIndex++) {
        if (nums[index] + nums[secondIndex] == target) {
          sumsList.add(index);
          sumsList.add(secondIndex);
          break;
        }
      }
      if (sumsList.isNotEmpty) {
        break;
      }
    }
    return sumsList;
  }
}
