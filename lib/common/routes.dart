import 'package:flutter/cupertino.dart';
import 'package:weather_app/features/main_page.dart';

class Routes {
  static const home = '/';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    try {
      final Map<String, dynamic>? args =
          settings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (settings.name) {
        case home:
          return CupertinoPageRoute(
            settings: const RouteSettings(),
            builder: (_) => const MainPage(),
          );

        default:
          return CupertinoPageRoute(
            settings: const RouteSettings(),
            builder: (_) => const MainPage(),
          );
      }
    } catch (e) {
      return CupertinoPageRoute(
        settings: const RouteSettings(),
        builder: (_) => const MainPage(),
      );
    }
  }
}
