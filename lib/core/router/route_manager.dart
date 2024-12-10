import 'package:go_router/go_router.dart';
import 'package:leet/core/constants/routes.dart';
import 'package:leet/view/main_page.dart';
import 'package:leet/view/polindrome/palindrome_view.dart';
import 'package:leet/view_model/main_page_view_model.dart';
import 'package:leet/view_model/palindrome_view_model.dart';
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
]);
