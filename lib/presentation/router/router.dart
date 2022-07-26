import 'package:auto_route/annotations.dart';
import 'package:we_pay/presentation/screens/auth/login_page.dart';
import 'package:we_pay/presentation/screens/auth/sign_up_page.dart';
import 'package:we_pay/presentation/screens/expense/expense_page.dart';
import 'package:we_pay/presentation/screens/home/home_page.dart';
import 'package:we_pay/presentation/screens/profile/profile.dart';
import 'package:we_pay/presentation/screens/search/search_page.dart';
import 'package:we_pay/presentation/screens/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, path: '/'),
    AutoRoute(page: LogInPage),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: SearchPage),
    AutoRoute(page: ExpensePage),
    AutoRoute(page: ProfilePage),
  ],
)
class $AppRouter {}
