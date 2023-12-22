import 'package:flutter/cupertino.dart';
import 'package:weather_app/features/home/presentation/pages/home_page.dart';
import 'package:weather_app/features/main_page.dart';
import 'package:weather_app/features/weather_search_and_add/presentation/pages/weather_search_add.dart';

class Routes {
  static const home = '/';
  static const searchWeather = '/searchWeather';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    try {
      final Map<String, dynamic>? args = settings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (settings.name) {
        case home:
          return CupertinoPageRoute(
            settings: const RouteSettings(),
            builder: (_) => const HomePage(),
          );
        case searchWeather:
          return CupertinoPageRoute(
            settings: const RouteSettings(),
            builder: (_) => const WeatherSearchAdd(),
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
