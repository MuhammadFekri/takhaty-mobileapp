import 'package:flutter/material.dart';
import 'package:takhaty/features/auth/screens/personal_info_screeen.dart';
import 'package:takhaty/features/auth/screens/register_screen.dart';
import 'package:takhaty/features/layout/screens/user_bottom_navigation_screen.dart';
import 'package:takhaty/features/onboarding/screens/onboarding_screen.dart';
import 'package:takhaty/features/splash/screens/splash_screen.dart';

// import '../../features/search/screens/first_filter_screen.dart';
import '../../features/auth/screens/otp_screen.dart';
import '../../features/search/screens/search_screen.dart';
// import '../../features/search/screens/second_filter_screen.dart';

class AppRouter {
  static final RouteObserver<ModalRoute<void>> routeObserver =
      RouteObserver<ModalRoute<void>>();

  static const String splashScreen = '/';
  static const String onboardingScreen = '/onboardingScreen';
  static const String userBottomNavigationScreen =
      '/UserBottomNavigationScreen';
  static const String registerScreen = '/registerScreen';
  static const String personalInfoScreen = '/personalInfoScreen';
  static const String searchScreen = '/SearchScreen';
  static const String firstFilterScreen = '/FirstFilterScreen';
  static const String secondFilterScreen = '/SecondFilterScreen';
  static const String otpScreen = '/otpScreen';

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // region Splash
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case userBottomNavigationScreen:
        return MaterialPageRoute(
            builder: (_) => const UserBottomNavigationScreen());
      case onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case searchScreen:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case otpScreen:
        return MaterialPageRoute(builder: (_) => const OtpScreen());
      case personalInfoScreen:
        return MaterialPageRoute(builder: (_) => const PersonalInfoScreen());
      // case firstFilterScreen:
      //   return MaterialPageRoute(builder: (_) => const FirstFilterScreen());
      // case secondFilterScreen:
      //   return MaterialPageRoute(builder: (_) => const SecondFilterScreen());

      // endregion
    }
    return null;
  }
}
