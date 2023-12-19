import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';

class BookConsultantItem extends StatelessWidget {
  const BookConsultantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.5.w,
      height: 140.h,
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: ColorsManager.lighterWhiteColor,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: const [
          BoxShadow(
            color: ColorsManager.shadowColor,
            blurRadius: 12,
            offset: Offset(2, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: ColorsManager.primaryColor,
                ),
                width: 24.w,
                height: 24.h,
                child: SvgPicture.asset(ImagesManager.heartBroken),
              ),
              10.w.pw,
              SvgPicture.asset(ImagesManager.addIcon),
              4.w.pw,
              Text(
                "15 ${StringsManager.availableExperts}",
                style: StylesManager.textStyle12BlackRegular
                    .copyWith(color: ColorsManager.primaryColor),
              )
            ],
          ),
          12.h.ph,
          Text(
            "جلسة فورية",
            style: StylesManager.textStyle16BlackRegular
                .copyWith(fontWeight: FontWeight.w300),
          ),
          12.h.ph,
          Text(
            "جلسات فورية للحالاة الطارئة خلال دقائق",
            style: StylesManager.textStyle14GreyRegular.copyWith(
                fontWeight: FontWeight.w300, color: ColorsManager.grey2Color),
          ),
        ],
      ),
    );
  }
}
