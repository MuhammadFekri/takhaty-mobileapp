import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/styles_manager.dart';

class MostFrequentConsultantItem extends StatelessWidget {
  const MostFrequentConsultantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: ColorsManager.hintGreyColor)),
      child: Row(
        children: [
          SvgPicture.asset(ImagesManager.conversation),
          12.w.pw,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ابنتى لا تلتفت لى وتبكى كثيراً",
                  style: StylesManager.textStyle16BlackRegular
                      .copyWith(fontWeight: FontWeight.w300),
                ),
                4.h.ph,
                Text(
                  "إضطرابات الصدمات والضغوطً",
                  style: StylesManager.textStyle12BlackRegular
                      .copyWith(color: ColorsManager.primaryColor),
                ),
              ],
            ),
          ),
          SvgPicture.asset(ImagesManager.arrowDown)
        ],
      ),
    );
  }
}
