import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:we_pay/presentation/core/functions.dart';

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeStatusBarColor(transparent, Brightness.dark);
    return AutoTabsScaffold(
      backgroundColor: white,
      routes: const [
        HomeRouter(),
        StatisticsRouter(),
        ProfileRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/home.svg'),
              label: 'Harajatlar',
              activeIcon: SvgPicture.asset('assets/svg/home.svg', color: blue),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/statistic.svg'),
              label: 'Statistika',
              activeIcon: SvgPicture.asset('assets/svg/statistic.svg', color: blue),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/profile.svg'),
              label: 'Hisob',
              activeIcon: SvgPicture.asset('assets/svg/profile.svg', color: blue),
            ),
          ],
        );
      },
    );
  }

  onTaped(index) {}
}
