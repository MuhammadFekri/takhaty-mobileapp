import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/styles_manager.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: ColorsManager.primaryColor,
          )),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24.r,
              ),
              8.w.pw,
              Text(
                'dina mohammed',
                style: StylesManager.textStyle12BlackRegular
                    .copyWith(fontWeight: FontWeight.normal),
              )
            ],
          ),
          9.h.ph,
          Text(
            "is simply dummy text of the printing and typesetting industry is simply dummy text of the printing and typesetting industry",
            style: StylesManager.textStyle14GreyRegular
                .copyWith(color: ColorsManager.grey2Color),
          ),
          4.h.ph,
          Row(
            children: [
              Row(
                children: [
                  SvgPicture.asset(ImagesManager.like),
                  4.w.pw,
                  Text(
                    "200",
                    style: StylesManager.textStyle12BlackRegular,
                  ),
                ],
              ),
              16.w.pw,
              Row(
                children: [
                  SvgPicture.asset(ImagesManager.dislike),
                  4.w.pw,
                  Text(
                    "200",
                    style: StylesManager.textStyle12BlackRegular,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
