// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:weather_app/common/all_contants.dart';

class DaysWeather extends StatelessWidget {
  bool onTap;
  DaysWeather({
    Key? key,
    this.onTap = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146,
      width: 60,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 1,
          color: AppColors.white.withOpacity(
            0.5,
          ),
        ),
        color: onTap ? const Color(0xff48319D) : const Color(0xff48319D).withOpacity(0.2),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 0,
            offset: const Offset(5, 4),
            color: AppColors.black.withOpacity(0.2),
          ),
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 0,
            offset: const Offset(1, 1),
            color: AppColors.white.withOpacity(0.2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "12 AM",
            style: AppTextStyles.body15w6.copyWith(
              color: AppColors.white,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.moonCloudMidRaining,
                height: 32,
                width: 32,
                fit: BoxFit.scaleDown,
              ),
              Text(
                "13%",
                style: AppTextStyles.body13w6.copyWith(
                  color: AppColors.weatherProtsentColor,
                ),
              ),
            ],
          ),
          Text(
            "19°",
            style: AppTextStyles.body20w4.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
