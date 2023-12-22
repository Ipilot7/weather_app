import 'package:flutter/material.dart';

class AppColors {
  //device
  static Color transparent = Colors.transparent;
  static Color white = const Color.fromRGBO(255, 255, 255, 1);
  static Color black = Colors.black;
  static Color grey = Colors.grey;
  static Color blue = const Color(0xff4EB4FF);
  static Color weatherInformationColor = const Color(0xff48319D);
  static Color labelColor = const Color(0xffEBEBF5);

  // Primary

  static Color weatherProtsentColor = const Color(0xff40CBD8);

  static Color greyColor = const Color(0xff3C3C43);
  static Color daysWeatherColor = const Color(0xff48319D);
  static Color backgroundSearchColor = const Color(0xff2E335A);

  static Color switchColor = const Color(0xffAFFCFF);
  static Color background = const Color.fromRGBO(48, 197, 203, 1);
  static Color indicatorColor = const Color(0xff30C5CB);
  static Color storyIndicatorColor = const Color(0xff48F8FF);
  static Color lightBlue = const Color(0xff30C5CB);
  static Color grayLight = Colors.grey.shade200;
  static Color darkGray = const Color(0xff373C42);
  static Color borderLight = const Color(0xff9BA2A8);
  static Color borderColor = const Color(0xff003748);
  

  static Color storyBorderColor = const Color(0xffA8FFFA);
  static Color gray = Colors.grey.shade400;
  static Color musicShadow = const Color(0xff101012).withOpacity(0.25);
  static Color red = Colors.red.shade500;
  static Color green = const Color(0xff00EB86);
  static LinearGradient gradient = const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Color(0xff0C9AFE), Color(0xff10CFFF), Color(0xff0FC8FF), Color(0xff0668B3)]);

  static LinearGradient backgroundLinearGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff2E335A),
      Color(0xff1C1B33),
    ],
  );
  static LinearGradient daysWeatherInPassiveGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      const Color(0xff48319D),
      const Color(0xff48319D).withOpacity(0),
    ],
  );
  static LinearGradient daysWeatherInActiveGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0xff48319D),
      const Color(0xff48319D).withOpacity(0),
    ],
  );
}

class AppShadow {
  static Shadow get defShadow => Shadow(
        color: AppColors.black.withOpacity(0.5),
        blurRadius: 3.0,
        offset: const Offset(0, 0),
      );
}
