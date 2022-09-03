import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:we_pay/presentation/router/bottom_navigation.dart';
import 'package:we_pay/presentation/screens/auth/login_page.dart';
import 'package:we_pay/presentation/screens/auth/sign_up_page.dart';
import 'package:we_pay/presentation/screens/debtors/debtors_page.dart';
import 'package:we_pay/presentation/screens/expense/expense_page.dart';
import 'package:we_pay/presentation/screens/home/home_page.dart';
import 'package:we_pay/presentation/screens/profile/profile.dart';
import 'package:we_pay/presentation/screens/search/search_page.dart';
import 'package:we_pay/presentation/screens/splash/splash_page.dart';
import 'package:we_pay/presentation/screens/statistics/statistics_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, path: '/'),
    AutoRoute(page: LogInPage),
    AutoRoute(page: SignUpPage),
    AutoRoute(
      page: BottomNavigationPage,
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          path: 'statistics',
          name: 'StatisticsRouter',
          children: [
            AutoRoute(page: StatisticsPage, path: ''),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'home',
          name: 'HomeRouter',
          children: [
            AutoRoute(page: HomePage, path: ''),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'profile',
          name: 'ProfileRouter',
          children: [
            AutoRoute(page: ProfilePage, path: ''),
          ],
        ),
      ],
    ),
    // AutoRoute(page: HomePage),
    // AutoRoute(page: SearchPage),
    // AutoRoute(page: ExpensePage),
    // AutoRoute(page: ProfilePage),
    // AutoRoute(page: DebtorsPage),
    // AutoRoute(page: StatisticsPage),
  ],
)
class $AppRouter {}
