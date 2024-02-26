import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafi_vendor/presentation/screens/auth_screens/choose_profile_type.dart';
import 'package:wafi_vendor/presentation/screens/auth_screens/complete_documentation_screen.dart';
import 'package:wafi_vendor/presentation/screens/auth_screens/login_screen.dart';
import 'package:wafi_vendor/presentation/screens/contact/contact_screen.dart';
import 'package:wafi_vendor/presentation/screens/earnings/earnings_screen.dart';
import 'package:wafi_vendor/presentation/screens/main_layout_screen/main_layout_screen.dart';
import 'package:wafi_vendor/presentation/screens/payout_screen/payout_screen.dart';
import 'package:wafi_vendor/presentation/screens/profile_screen/profile_screen.dart';
import 'package:wafi_vendor/presentation/screens/review_screen/review_screen.dart';
import 'package:wafi_vendor/presentation/screens/task_details/accepeted_task_screen.dart';
import 'package:wafi_vendor/presentation/screens/task_details/task_details_screen.dart';
import 'package:wafi_vendor/presentation/screens/task_history_screen/task_history_screen.dart';

import 'core/app_router/app_router.dart';
import 'core/app_router/screens_name.dart';
import 'core/app_theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context , child){
        return MaterialApp(
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          // debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: ScreenName.splashScreen,
          // home: ContactScreen(),
        );
      },
    );
  }
}
