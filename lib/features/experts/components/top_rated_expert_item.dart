import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/strings_manager.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/styles_manager.dart';

class TopRatedExpertItem extends StatelessWidget {
  const TopRatedExpertItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 199.h,
      width: 159.w,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
          border: Border.all(color: ColorsManager.primaryBorderColor),
          borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                width: 64.w,
                height: 64.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/64x64"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4.5.h),
                decoration: const BoxDecoration(
                    color: ColorsManager.primaryColor, shape: BoxShape.circle),
                height: 24.h,
                width: 24.w,
                child: SvgPicture.asset(ImagesManager.recommended),
              )
            ],
          ),
          8.h.ph,
          Text(
            "رضوى محمد",
            style: StylesManager.textStyle16BlackRegular,
          ),
          4.h.ph,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
                color: ColorsManager.secondary3,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorsManager.secondary2)),
            child: Text(
              "أخصائى نفسي",
              style: StylesManager.textStyle10Secondary2Regular,
            ),
          ),
          8.h.ph,
          Text(
            "400 ${StringsManager.currency} / 60 ${StringsManager.minute}",
            style: StylesManager.textStyle12BlackRegular,
          ),
          8.h.ph,
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: ' +',
                  style: StylesManager.textStyle12BlackRegular
                      .copyWith(color: ColorsManager.primaryColor),
                ),
                TextSpan(
                  text: '200',
                  style: StylesManager.textStyle12BlackRegular.copyWith(
                      color: ColorsManager.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' تقييم',
                  style: StylesManager.textStyle12BlackRegular.copyWith(
                    color: ColorsManager.primaryColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
