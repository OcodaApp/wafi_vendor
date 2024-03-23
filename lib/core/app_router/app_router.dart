import 'package:flutter/material.dart';
import 'package:wafi_vendor/presentation/screens/auth_screens/choose_profile_type.dart';
import 'package:wafi_vendor/presentation/screens/auth_screens/complete_documentation_screen.dart';
import 'package:wafi_vendor/presentation/screens/earnings/earnings_screen.dart';
import 'package:wafi_vendor/presentation/screens/main_layout_screen/main_layout_screen.dart';
import 'package:wafi_vendor/presentation/screens/payout_screen/payout_screen.dart';
import 'package:wafi_vendor/presentation/screens/support_screen/chat_support_screen.dart';
import 'package:wafi_vendor/presentation/screens/task_details/accepeted_task_screen.dart';
import 'package:wafi_vendor/presentation/screens/task_details/task_details_screen.dart';
import 'package:wafi_vendor/presentation/screens/task_history_screen/task_history_screen.dart';

import '../../presentation/screens/auth_screens/login_screen.dart';
import '../../presentation/screens/auth_screens/otp_screen.dart';
import '../../presentation/screens/auth_screens/register_screen.dart';
import '../../presentation/screens/chat_screen/chat_screen.dart';
import '../../presentation/screens/contact/contact_screen.dart';
import '../../presentation/screens/intro_screens/select_language_screen.dart';
import '../../presentation/screens/intro_screens/splash_screen.dart';
import '../../presentation/screens/intro_screens/welcome_screen.dart';
import '../../presentation/screens/profile_screen/profile_screen.dart';
import 'screens_name.dart';
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    try {
      switch (settings.name) {
        case ScreenName.splashScreen:
          return MaterialPageRoute(
            builder: (_) => const SplashScreen(),
          );
        case ScreenName.selectLanguageScreen:
          return MaterialPageRoute(
            builder: (_) => const SelectLanguageScreen(),
          );
        case ScreenName.welcomeScreen:
          return MaterialPageRoute(
            builder: (_) => const WelcomeScreen(),
          );
        case ScreenName.loginScreen:
          return MaterialPageRoute(
            builder: (_) => const LoginScreen(),
          );
        case ScreenName.registerScreen:
          return MaterialPageRoute(
            builder: (_) => const RegisterScreen(),
          );
        case ScreenName.acceptedTaskHistoryScreen:
          return MaterialPageRoute(
            builder: (_) => const AcceptedTaskDetailsFirstScreen(),
          );
        case ScreenName.taskDetailsScreen:
          return MaterialPageRoute(
            builder: (_) => const TaskDetailsFirstScreen(),
          );
        case ScreenName.MainLayoutScreen:
          return MaterialPageRoute(
            builder: (_) => const MainLayoutScreen(),
          );
        case ScreenName.chooseProfileType:
          return MaterialPageRoute(
            builder: (_) => const ChooseProfileTypeScreen(),
          );
        case ScreenName.completeDocumentation:
          final bool args = settings.arguments as bool;
          return MaterialPageRoute(
            builder: (_) =>  CompleteDocumentationScreen(isCarDetails: args),
          );
        case ScreenName.payout:
          return MaterialPageRoute(
            builder: (_) => const PayoutScreen(),
          );
        case ScreenName.profileScreen:
          return MaterialPageRoute(
            builder: (_) => const ProfileScreen(),
          );
        case ScreenName.contactScreen:
          return MaterialPageRoute(
            builder: (_) => const ContactScreen(),
          );
        case ScreenName.earnings:
          return MaterialPageRoute(
            builder: (_) => const EarningsScreen(),
          );
        case ScreenName.taskHistoryScreen:
          return MaterialPageRoute(
            builder: (_) => const TaskHistoryScreen(),
          );
        case ScreenName.otpScreen:
          return MaterialPageRoute(
            builder: (_) => const OtpScreen(),
          );
        case ScreenName.supportChatScreen:
          return MaterialPageRoute(
            builder: (_) => const ChatSupportScreen(),
          );
        case ScreenName.chatScreen:
          return MaterialPageRoute(
            builder: (_) => const ChatScreen(),
          );
        default:
          return _errorRoute();
      }
    } catch (e) {
      return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error when routing to this screen'),
        ),
      );
    });
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return page;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: FadeTransition(
                opacity: Tween<double>(begin: 0.5, end: 1).animate(animation),
                child: child,
              ),
            );
          },
          transitionDuration: const Duration(milliseconds: 250),
          reverseTransitionDuration: const Duration(milliseconds: 250),
        );
}
