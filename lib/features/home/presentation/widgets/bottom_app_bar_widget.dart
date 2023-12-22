import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/common/all_contants.dart';
import 'package:weather_app/common/app_color.dart';
import 'package:weather_app/common/components/bottom_bar_center_container.dart';
import 'package:weather_app/common/components/bottom_bar_container.dart';
import 'package:weather_app/common/routes.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            painter: BottomBarContainer(),
            size: const Size(double.infinity, 100),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      Assets.icons.locationMapIcon,
                      height: 44,
                      width: 44,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Routes.searchWeather);
                    },
                    child: SvgPicture.asset(
                      Assets.icons.menuIcon,
                      height: 44,
                      width: 44,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomPaint(
            size: const Size(260, 100),
            painter: BottomBarCenterContainer(),
          )
        ],
      ),
    );
  }
}
// BottomAppBarContainer()