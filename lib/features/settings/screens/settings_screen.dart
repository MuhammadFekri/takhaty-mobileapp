import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/core/router/routes.dart';

import '../../../core/resources/colors_manager.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.settings),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringsManager.profile,
              style: StylesManager.textStyle16GrayRegular,
            ),
            16.h.ph,
            SettingsTile(
              name: StringsManager.profile,
              iconPath: ImagesManager.accountSettings,
              onTap: () {},
            ),
            SettingsTile(
              name: StringsManager.favourites,
              iconPath: ImagesManager.fav,
              onTap: () {},
            ),
            SettingsTile(
              name: StringsManager.wallet,
              iconPath: ImagesManager.wallet,
              onTap: () {},
            ),
            SettingsTile(
              name: StringsManager.appointments,
              iconPath: ImagesManager.schedule,
              onTap: () {},
            ),
            SettingsTile(
              name: StringsManager.courses,
              iconPath: ImagesManager.mentalHealth,
              onTap: () {},
            ),
            SettingsTile(
              name: StringsManager.lecturers,
              iconPath: ImagesManager.lecture,
              onTap: () {},
            ),
            Text(
              StringsManager.otherSettings,
              style: StylesManager.textStyle16GrayRegular,
            ),
            16.h.ph,
            SettingsTile(
              name: StringsManager.joinASExpert,
              iconPath: ImagesManager.doctor,
              onTap: () {},
            ),
            SettingsTile(
              name: StringsManager.blog,
              iconPath: ImagesManager.blog,
              onTap: () {},
            ),
            SettingsTile(
              name: StringsManager.help,
              iconPath: ImagesManager.help,
              onTap: () {},
            ),
            SettingsTile(
              name: StringsManager.signOut,
              iconPath: ImagesManager.logout,
              onTap: () {
                context.pushReplacement(AppRouter.registerScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.iconPath,
    required this.name,
    required this.onTap,
  });

  final String iconPath;
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 52.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: ColorsManager.secondary2,
              )),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(12.r),
            child: ListTile(
              leading:
                  SvgPicture.asset(iconPath, color: ColorsManager.secondary2),
              title: Text(name, style: StylesManager.textStyle16BlackRegular),
            ),
          ),
        ),
        18.h.ph
      ],
    );
  }
}
