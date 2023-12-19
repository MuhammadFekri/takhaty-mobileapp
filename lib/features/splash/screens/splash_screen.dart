import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/constants/constants.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';

import '../../../core/router/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {
      context.pushReplacement(AppRouter.onboardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(ImagesManager.logo,
                width: 45.w, color: Colors.white), //
            14.h.ph, // Your logo here
            Text(
              appName,
              style: StylesManager.textStyle40WhiteBold,
              textAlign: TextAlign.center,
            ),
            14.h.ph, // Your logo here
            Text(
              StringsManager.appSlogan,
              style: StylesManager.textStyle18WhiteLight,
              textAlign: TextAlign.center,
            ),
            16.h.ph,
            SvgPicture.asset(ImagesManager.splashLine,
                width: 214.w, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
