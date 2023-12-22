import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/common/all_contants.dart';
import 'package:weather_app/common/components/clip_container.dart';

class WeatherInfoContainer extends StatefulWidget {
  const WeatherInfoContainer({super.key});

  @override
  State<WeatherInfoContainer> createState() => _WeatherInfoContainerState();
}

class _WeatherInfoContainerState extends State<WeatherInfoContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 190,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: CustomPaint(
              size: const Size(double.infinity, 184),
              painter: ClipContainer(),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "19°",
                          style: AppTextStyles.body64w4.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "H:24°",
                                    style: AppTextStyles.body15w4.copyWith(
                                      color: AppColors.white.withOpacity(0.4),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "L:24°",
                                    style: AppTextStyles.body15w4.copyWith(
                                      color: AppColors.white.withOpacity(0.4),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Montreal, Canada",
                                style: AppTextStyles.body20w4.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Mid Rain",
                      style: AppTextStyles.body13w4.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              Assets.icons.moonCloudMidRaining,
              width: 160,
              height: 160,
            ),
          ),
        ],
      ),
    );
  }
}
