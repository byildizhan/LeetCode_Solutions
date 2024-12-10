import 'package:flutter/material.dart';

class PalindromeViewModel extends ChangeNotifier {
  String isPalindromeText = "";
  TextEditingController textEditingController = TextEditingController(text: '');

  checkIsPalindrome() {
    if (textEditingController.text.isNotEmpty) {
      {
        bool isPalindrome = true;
        List stringNumber = textEditingController.text.split('');
        int firstIndex = 0;
        int lastIndex = stringNumber.length - 1;
        for (firstIndex; firstIndex <= lastIndex; firstIndex++) {
          if (stringNumber[firstIndex] != stringNumber[lastIndex]) {
            isPalindrome = false;
          }
          lastIndex--;
        }
        if (isPalindrome) {
          isPalindromeText = "${textEditingController.text} is palindrome";
        } else {
          isPalindromeText = "${textEditingController.text} is not palindrome";
        }
      }
    } else {
      isPalindromeText = "Input is empty!!";
    }
    notifyListeners();
  }
}
