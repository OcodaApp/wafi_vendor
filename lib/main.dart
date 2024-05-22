import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafi_vendor/presentation/screens/auth_screens/choose_profile_type.dart';
import 'package:wafi_vendor/presentation/screens/auth_screens/complete_documentation_screen.dart';
import 'package:wafi_vendor/presentation/screens/auth_screens/login_screen.dart';
import 'package:wafi_vendor/presentation/screens/chat_screen/chat_screen.dart';
import 'package:wafi_vendor/presentation/screens/contact/contact_screen.dart';
import 'package:wafi_vendor/presentation/screens/earnings/earnings_screen.dart';
import 'package:wafi_vendor/presentation/screens/main_layout_screen/main_layout_screen.dart';
import 'package:wafi_vendor/presentation/screens/payout_screen/payout_screen.dart';
import 'package:wafi_vendor/presentation/screens/profile_screen/profile_screen.dart';
import 'package:wafi_vendor/presentation/screens/review_screen/review_screen.dart';
import 'package:wafi_vendor/presentation/screens/task_details/accepeted_task_screen.dart';
import 'package:wafi_vendor/presentation/screens/task_details/task_details_screen.dart';
import 'package:wafi_vendor/presentation/screens/task_history_screen/task_history_screen.dart';
import 'package:wafi_vendor/translations/codegen_loader.g.dart';

import 'core/app_router/app_router.dart';
import 'core/app_router/screens_name.dart';
import 'core/app_theme/app_theme.dart';
import 'core/cache_helper/cache_keys.dart';
import 'core/cache_helper/shared_pref_methods.dart';
import 'presentation/screens/done_task_images_screen_screen/done_task_images_screen_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale(
          'en',
        ),
        Locale(
          'ar',
        ),
      ],
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),
      // <-- change the path of the translation files
      fallbackLocale: Locale(CacheHelper.getData(key: CacheKeys.initialLocale)??'en', ),
      child: const MyApp(),
    ),
  );
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
          // home: DoneTaskImagesScreen(),
        );
      },
    );
  }
}
