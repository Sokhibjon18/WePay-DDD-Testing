import 'package:auto_route/auto_route.dart';
import 'bottom_navigation.dart';
import '../screens/auth/login_page.dart';
import '../screens/auth/sign_up_page.dart';
import '../screens/expense/expense_page.dart';
import '../screens/home/home_page.dart';
import '../screens/profile/profile.dart';
import '../screens/splash/splash_page.dart';
import '../screens/statistics/statistics_page.dart';

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
            AutoRoute(page: ExpensePage),
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
  ],
)
class $AppRouter {}
