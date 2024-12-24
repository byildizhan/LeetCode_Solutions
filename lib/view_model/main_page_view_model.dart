import 'package:flutter/material.dart';
import 'package:leet/core/constants/routes.dart';
import 'package:leet/widgets/solutions_widget.dart';

class MainPageViewModel extends ChangeNotifier {
  List<Widget> solutions = [
    const SolutionsWidget(route: Routes.palindromeView, title: 'Palindrome'),
    const SolutionsWidget(
        route: Routes.romanToIntegerView, title: 'Roman To Integer Converter'),
    const SolutionsWidget(
        route: Routes.isBracesValidView, title: 'Braces Validation'),
  ];
}
