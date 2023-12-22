import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/common/all_contants.dart';
import 'package:weather_app/features/weather_search_and_add/presentation/widgets/weather_info_container.dart';
import '../../../../common/components/clip_container.dart';

class WeatherSearchAdd extends StatefulWidget {
  const WeatherSearchAdd({super.key});

  @override
  State<WeatherSearchAdd> createState() => _WeatherSearchAddState();
}

class _WeatherSearchAddState extends State<WeatherSearchAdd> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.backgroundLinearGradient,
        ),
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 47,
                ),
                PreferredSize(
                  preferredSize: const Size(double.infinity, 52),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: AppColors.white,
                                size: 23,
                              ),
                            ),
                            Text(
                              "Weather",
                              style: AppTextStyles.head28w7.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            Assets.icons.moreHoriz,
                            width: 33,
                            height: 33,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.25),
                      ),
                      BoxShadow(
                        color: AppColors.daysWeatherColor,
                        spreadRadius: -3.0,
                        blurRadius: 2.0,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: " Search for a city or airport",
                      hintStyle: AppTextStyles.body17w4.copyWith(
                        color: AppColors.labelColor.withOpacity(0.6),
                      ),
                      prefixIcon: InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          Assets.icons.searchIcon,
                          width: 15,
                          height: 15,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                width: size.width,
                height: double.infinity,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(30),
                  itemBuilder: (context, index) {
                    return const WeatherInfoContainer();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
