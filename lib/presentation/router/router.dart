import 'package:auto_route/annotations.dart';
import 'package:we_pay/presentation/auth/login_page.dart';
import 'package:we_pay/presentation/auth/sign_up_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: LogInPage, path: '/'),
    AutoRoute(page: SignUpPage),
  ],
)
class $AppRouter {}
