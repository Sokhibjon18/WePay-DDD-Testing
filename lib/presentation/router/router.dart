import 'package:auto_route/annotations.dart';
import 'package:we_pay/presentation/auth/login_page.dart';
import 'package:we_pay/presentation/auth/sign_up_page.dart';
import 'package:we_pay/presentation/home/home_page.dart';
import 'package:we_pay/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, path: '/'),
    AutoRoute(page: LogInPage),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}
