import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/dashboard_controller.dart';
import '../widgets/colors.dart';
import 'menu/popular_menu.dart';
import 'menu/profile_menu.dart';
import 'menu/upcoming_menu.dart';
import 'menu/now_playing_menu.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    //connecting controller dengan ui
    final DashboardController dashboardController =
        Get.find();

    final List<Widget> menus = [
      PopularMenu(),
      NowPlayingMenu(),
      UpcomingMenu(),
      ProfileMenu()
    ];

    return Obx(() {
      return Scaffold(
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primaryColor,
          unselectedItemColor: secondaryColor,
          currentIndex: dashboardController.selectedIndex.value,
          onTap: dashboardController.changeMenu,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.trending_up),
                label: "Popular",
                backgroundColor: whiteColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.movie_creation_rounded),
                label: "Now Playing",
                backgroundColor: whiteColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.date_range_rounded),
                label: "Upcoming",
                backgroundColor: whiteColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Profile",
                backgroundColor: whiteColor),
          ],
        ),
      );
    });
  }
}
