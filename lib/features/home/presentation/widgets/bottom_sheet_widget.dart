// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/common/app_color.dart';
import 'package:weather_app/common/app_text_style.dart';

import 'package:weather_app/common/components/days_weather.dart';

class BottomSheetWidget extends StatefulWidget {
  Size size;
  BottomSheetWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  int indexActive = 1;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          width: double.infinity,
          height: 325,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(44),
              topRight: Radius.circular(44),
            ),
            gradient: AppColors.backgroundLinearGradient,
          ),
          child: Column(
            children: [
              Container(
                height: 49,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 5,
                      width: 48,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: AppColors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Hourly Forecast",
                            style: AppTextStyles.body15w5.copyWith(
                              color: AppColors.white.withOpacity(0.4),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Weekly Forecast",
                            style: AppTextStyles.body15w5.copyWith(
                              color: AppColors.white.withOpacity(0.4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        2,
                        (index) => Container(
                          height: 5,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xff2E335A).withOpacity(0.26),
                                const Color(0xff7853e1),
                                const Color(0xff1C1B33).withOpacity(0.26),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: AppColors.white.withOpacity(0.5),
                thickness: 1.5,
                height: 0,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 146,
                alignment: Alignment.center,
                child: ListView.separated(
                  padding: EdgeInsets.zero.copyWith(left: 20, right: 20),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          indexActive = index;
                        });
                      },
                      child: DaysWeather(
                        onTap: indexActive == index,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 12,
                    );
                  },
                  itemCount: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
