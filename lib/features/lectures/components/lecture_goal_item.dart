import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/styles_manager.dart';

class LectureGoalItem extends StatelessWidget {
  const LectureGoalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Container(
            width: 24.w,
            height: 24.h,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: ColorsManager.secondaryDarkColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                ImagesManager.heartBroken,
                color: ColorsManager.primaryColor,
              ),
            ),
          ),
          12.w.pw,
          Text(
            "التعرف على معلومات تساعد فى حياتك.",
            style: StylesManager.textStyle14BlackRegular,
          )
        ],
      ),
    );
  }
}
