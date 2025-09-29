import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafi_vendor/translations/codegen_loader.g.dart';

import 'core/app_router/app_router.dart';
import 'core/app_router/screens_name.dart';
import 'core/app_theme/app_theme.dart';
import 'core/cache_helper/cache_keys.dart';
import 'core/cache_helper/shared_pref_methods.dart';

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
            title: 'Wafi',
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
