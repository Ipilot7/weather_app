import 'package:flutter/material.dart';
import 'package:weather_app/common/all_contants.dart';
import 'package:weather_app/features/home/presentation/widgets/bottom_app_bar_widget.dart';
import 'package:weather_app/features/home/presentation/widgets/bottom_sheet_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.backgroundImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Montreal",
                  style: AppTextStyles.body33w7.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "19°",
                  style: AppTextStyles.body96w2.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  "Mostly Clear",
                  style: AppTextStyles.body20w6.copyWith(
                    color: AppColors.white.withOpacity(0.4),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "H:24°",
                      style: AppTextStyles.body20w6.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "L:18°",
                      style: AppTextStyles.body20w6.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  Assets.images.houseImage,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomSheetWidget(size: size),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BottomAppBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
