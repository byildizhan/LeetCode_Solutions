import 'package:flutter/material.dart';

class IsBracesValidViewModel extends ChangeNotifier {
  String isValidText = "";
  TextEditingController textEditingController = TextEditingController(text: '');
  List<String> open = ['(', '[', '{'];
  List<String> closed = [')', ']', '}'];

  void isValid() {
    List<String> charList = textEditingController.text.split('');
    List<String> lastOpen = [];

    if (charList.length % 2 == 1) {
      isValidText = '${textEditingController.text} is not valid';
    }

    for (String i in charList) {
      if (open.contains(i)) {
        lastOpen.add(i);
      } else {
        if (lastOpen.isNotEmpty) {
          if (open.indexOf(lastOpen.last) != closed.indexOf(i)) {
            isValidText = '${textEditingController.text} is not valid';
          } else {
            lastOpen.removeLast();
          }
        } else {
          isValidText = '${textEditingController.text} is not valid';
        }
      }
    }

    if (lastOpen.isNotEmpty) {
      isValidText = '${textEditingController.text} is not valid';
    } else {
      isValidText = '${textEditingController.text} is valid';
    }
    notifyListeners();
  }
}
