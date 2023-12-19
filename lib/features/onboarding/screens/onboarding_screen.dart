import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';

import '../../../core/router/routes.dart';
import '../components/custom_next_button.dart';
import '../data/onboarding_data.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController()
      ..addListener(() {
        final nextPage = _pageController.page!.round();
        if (nextPage != _currentPage) {
          setState(() {
            _currentPage = nextPage;
          });
        }
      });
  }

  void navigateToRegister() {
    context.push(AppRouter.userBottomNavigationScreen);
  }

  void _goToNextPage() {
    if (_currentPage < OnBoardingData.data.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to another screen when onboarding is done
      navigateToRegister();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          100.h.ph,
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.65,
            child: PageView.builder(
              controller: _pageController,
              itemCount: OnBoardingData.data.length,
              itemBuilder: (context, index) {
                final onboardingPage = OnBoardingData.data[index];
                return OnBoardingPage(
                  imagePath: onboardingPage.image,
                  headline: onboardingPage.title,
                  description: onboardingPage.description,
                );
              },
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      navigateToRegister();
                    },
                    child: Text(StringsManager.skip)),
                GestureDetector(
                  onTap: () {
                    _goToNextPage();
                  },
                  child: CustomStatusView(
                    radius: 22.r,
                    spacing: 16,
                    strokeWidth: 3.5,
                    indexOfSeenStatus: _currentPage + 1,
                    numberOfStatus: OnBoardingData.data.length,
                    padding: 5,
                    centerWidget: SvgPicture.asset(
                      ImagesManager.nextArrow,
                    ),
                    seenColor: ColorsManager.primaryColor,
                    unSeenColor: Colors.grey.shade200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  final String imagePath;
  final String headline;
  final String description;

  const OnBoardingPage({
    super.key,
    required this.imagePath,
    required this.headline,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(imagePath, width: 250.w, height: 250.h),
          const SizedBox(height: 20),
          Text(headline,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
              )),
        ],
      ),
    );
  }
}
