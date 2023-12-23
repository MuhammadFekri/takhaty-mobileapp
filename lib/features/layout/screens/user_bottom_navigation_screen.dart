import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/features/home/screens/home_screen.dart';
import 'package:takhaty/features/settings/screens/settings_screen.dart';

import '../../../core/resources/images_manager.dart';
import '../data/model/bottom_bar_model.dart';

class UserBottomNavigationScreen extends StatefulWidget {
  const UserBottomNavigationScreen({super.key});

  @override
  State<UserBottomNavigationScreen> createState() =>
      _UserBottomNavigationScreenState();
}

class _UserBottomNavigationScreenState
    extends State<UserBottomNavigationScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const SizedBox(),
    const SizedBox(),
    const SettingsScreen(),
  ];

  List<BottomBarItem> bottomBarItems = [
    BottomBarItem(icon: ImagesManager.home, title: StringsManager.skip),
    BottomBarItem(
        icon: ImagesManager.schedule, title: StringsManager.appointments),
    BottomBarItem(icon: ImagesManager.community, title: StringsManager.clubs),
    BottomBarItem(icon: ImagesManager.profile, title: StringsManager.account),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 71.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r), topRight: Radius.circular(8.r))),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: List.generate(bottomBarItems.length, (index) {
              return BottomNavigationBarItem(
                  label: bottomBarItems[index].title,
                  icon: SvgPicture.asset(bottomBarItems[index].icon,
                      color: currentIndex == index
                          ? ColorsManager.primaryColor
                          : ColorsManager.hintGreyColor));
            })),
      ),
    );
  }
}
