import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';

class SessionDetailsItem extends StatelessWidget {
  const SessionDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: ColorsManager.secondary2)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 30.w,
                height: 30.h,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: ColorsManager.primaryColor,
                    borderRadius: BorderRadius.circular(4)),
                child: SvgPicture.asset(ImagesManager.heartBroken),
              ),
              10.w.pw,
              Text(
                'جلسة أُسرية',
                style: StylesManager.textStyle14PrimaryBold,
              )
            ],
          ),
          12.h.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(ImagesManager.appointmentCalender,
                      color: ColorsManager.primaryColor,
                      width: 20.w,
                      height: 20.h),
                  8.w.pw,
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${StringsManager.date}:  ',
                          style: StylesManager.textStyle14GrayRegular,
                        ),
                        TextSpan(
                          text: '20 نوفمبر',
                          style: StylesManager.textStyle14BlackRegular,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(ImagesManager.time,
                      color: ColorsManager.primaryColor,
                      width: 20.w,
                      height: 20.h),
                  8.w.pw,
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${StringsManager.time}:  ',
                          style: StylesManager.textStyle14GrayRegular,
                        ),
                        TextSpan(
                          text: ' 01:45 م',
                          style: StylesManager.textStyle14BlackRegular,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          12.h.ph,
          Row(
            children: [
              SvgPicture.asset(ImagesManager.period,
                  color: ColorsManager.primaryColor, width: 20.w, height: 20.h),
              8.w.pw,
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${StringsManager.appointmentPeriod}:  ',
                      style: StylesManager.textStyle14GrayRegular,
                    ),
                    TextSpan(
                      text: '45 د',
                      style: StylesManager.textStyle14BlackRegular,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
