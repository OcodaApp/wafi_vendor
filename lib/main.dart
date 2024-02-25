import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafi_vendor/presentation/screens/auth_screens/login_screen.dart';

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
          // onGenerateRoute: AppRouter.generateRoute,
          // initialRoute: ScreenName.splashScreen,
          home: LoginScreen(),
        );
      },
    );
  }
}
