import 'package:go_router/go_router.dart';
import 'package:leet/core/constants/routes.dart';
import 'package:leet/view/is_braces_valid/is_braces_valid_view.dart';
import 'package:leet/view/main_page.dart';
import 'package:leet/view/palindrome/palindrome_view.dart';
import 'package:leet/view/roman_to_integer/roman_to_integer_view.dart';
import 'package:leet/view_model/is_braces_valid_view_model.dart';
import 'package:leet/view_model/main_page_view_model.dart';
import 'package:leet/view_model/palindrome_view_model.dart';
import 'package:leet/view_model/roman_to_integer_view_model.dart';
import 'package:provider/provider.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: Routes.mainPage,
    name: '/',
    builder: (context, state) {
      return ChangeNotifierProvider<MainPageViewModel>(
        create: (context) => MainPageViewModel(),
        child: const MainPage(),
      );
    },
  ),
  GoRoute(
    path: Routes.palindromeView,
    name: '/palindrome_view',
    builder: (context, state) {
      return ChangeNotifierProvider<PalindromeViewModel>(
        create: (context) => PalindromeViewModel(),
        child: PalindromeView(),
      );
    },
  ),
  GoRoute(
    path: Routes.romanToIntegerView,
    name: '/roman_to_integer_view',
    builder: (context, state) {
      return ChangeNotifierProvider<RomanToIntegerViewModel>(
        create: (context) => RomanToIntegerViewModel(),
        child: RomanToIntegerView(),
      );
    },
  ),
  GoRoute(
    path: Routes.isBracesValidView,
    name: '/is_braves_valid_view',
    builder: (context, state) {
      return ChangeNotifierProvider<IsBracesValidViewModel>(
        create: (context) => IsBracesValidViewModel(),
        child: IsBracesValidView(),
      );
    },
  ),
]);
