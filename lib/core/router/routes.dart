import 'package:flutter/material.dart';
import 'package:takhaty/features/appointments/screens/add_appointment_screen.dart';
import 'package:takhaty/features/appointments/screens/appointments_screen.dart';
import 'package:takhaty/features/auth/screens/personal_info_screeen.dart';
import 'package:takhaty/features/auth/screens/register_screen.dart';
import 'package:takhaty/features/checkout/screens/complete_payment_screen.dart';
import 'package:takhaty/features/favourites/screens/favourites_screen.dart';
import 'package:takhaty/features/layout/screens/user_bottom_navigation_screen.dart';
import 'package:takhaty/features/notification/screens/notification_screen.dart';
import 'package:takhaty/features/onboarding/screens/onboarding_screen.dart';
import 'package:takhaty/features/profile/screens/change_password_screen.dart';
import 'package:takhaty/features/profile/screens/edit_profile_screen.dart';
import 'package:takhaty/features/settings/screens/my_courses_screen.dart';
import 'package:takhaty/features/splash/screens/splash_screen.dart';
import 'package:takhaty/features/wallet/screens/wallet_screen.dart';

import '../../features/appointments/screens/session_details_screen.dart';
import '../../features/auth/screens/otp_screen.dart';
import '../../features/categories/screens/category6_screen.dart';
import '../../features/categories/screens/exam_result_screen.dart';
import '../../features/categories/screens/exam_screen.dart';
import '../../features/categories/screens/personalize_yourself_question_details_screen.dart';
import '../../features/categories/screens/personalize_yourself_screen.dart';
import '../../features/checkout/screens/checkout.dart';
import '../../features/experts/screens/expert_details_screen.dart';
import '../../features/search/screens/first_filter_screen.dart';
import '../../features/search/screens/search_screen.dart';
import '../../features/search/screens/second_filter_screen.dart';
import '../../features/settings/screens/help_screen.dart';
import '../../features/settings/screens/my_lectures_screen.dart';

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
  static const String expertDetailsScreen = '/expertDetailsScreen';
  static const String editProfileScreen = '/editProfilesScreen';
  static const String changePasswordScreen = '/changePasswordScreen';
  static const String favouritesScreen = '/favouritesScreen';
  static const String walletScreen = '/walletScreen';
  static const String helpScreen = '/helpScreen';
  static const String appointmentsScreen = '/appointmentsScreen';
  static const String myCoursesScreen = '/myCoursesScreen';
  static const String myLecturesScreen = '/myLecturesScreen';
  static const String addAppointmentScreen = '/addAppointmentScreen';
  static const String checkOutScreen = '/checkOutScreen';
  static const String completePaymentScreen = '/completePaymentScreen';
  static const String sessionDetailsScreen = '/sessionDetailsScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String personalizeYourselfScreen = '/personalizeYourselfScreen';
  static const String personalizeYourselfQuestionDetailsScreen =
      '/personalizeYourselfQuestionDetailsScreen';
  static const String examScreen = '/examScreen';
  static const String examResultScreen = '/examResultScreen';
  static const String category6Screen = '/category6Screen';

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
      case firstFilterScreen:
        return MaterialPageRoute(builder: (_) => const FirstFilterScreen());
      case secondFilterScreen:
        return MaterialPageRoute(builder: (_) => const SecondFilterScreen());
      case expertDetailsScreen:
        return MaterialPageRoute(builder: (_) => const ExpertDetailsScreen());
      case editProfileScreen:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      case changePasswordScreen:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
      case favouritesScreen:
        return MaterialPageRoute(builder: (_) => const FavouritesScreen());
      case walletScreen:
        return MaterialPageRoute(builder: (_) => const WalletScreen());
      case helpScreen:
        return MaterialPageRoute(builder: (_) => const HelpScreen());
      case appointmentsScreen:
        return MaterialPageRoute(builder: (_) => const AppointmentsScreen());
      case myCoursesScreen:
        return MaterialPageRoute(builder: (_) => const MyCoursesScreen());
      case myLecturesScreen:
        return MaterialPageRoute(builder: (_) => const MyLecturesScreen());
      case addAppointmentScreen:
        return MaterialPageRoute(builder: (_) => const AddAppointmentScreen());
      case checkOutScreen:
        return MaterialPageRoute(builder: (_) => const CheckOutScreen());
      case completePaymentScreen:
        return MaterialPageRoute(builder: (_) => const CompletePaymentScreen());
      case sessionDetailsScreen:
        return MaterialPageRoute(builder: (_) => const SessionDetailsScreen());
      case notificationScreen:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case personalizeYourselfScreen:
        return MaterialPageRoute(
            builder: (_) => const PersonalizeYourselfScreen());
      case personalizeYourselfQuestionDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const PersonalizeYourselfQuestionDetailsScreen());
      case examScreen:
        return MaterialPageRoute(builder: (_) => const ExamScreen());
      case examResultScreen:
        return MaterialPageRoute(builder: (_) => const ExamResultScreen());
      case category6Screen:
        return MaterialPageRoute(builder: (_) => const Category6Screen());

      // endregion
    }
    return null;
  }
}
