import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/common/app_color.dart';
import 'package:weather_app/common/app_text_style.dart';
import 'package:weather_app/common/routes.dart';

// late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  // await sl.init();
  // await LocalNotifications.init();
  // streamController.addStream(channel.stream);

  // cameras = await availableCameras();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: true),
  );

  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then(
    (_) => runApp(
      EasyLocalization(
          useOnlyLangCode: true,
          supportedLocales: const [
            Locale('en'),
            Locale('uz'),
            Locale('ru'),
          ],
          path: 'assets/l10n',
          fallbackLocale: const Locale('en'),
          child: const MyApp()),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => Routes.generateRoutes(settings),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: true,
            backgroundColor: AppColors.background,
            iconTheme: IconThemeData(color: AppColors.white),
            titleTextStyle:
                AppTextStyles.body16w7.copyWith(color: AppColors.white)),
        scaffoldBackgroundColor: AppColors.white,
      ),
      title: 'skladum',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
    );
  }
}
