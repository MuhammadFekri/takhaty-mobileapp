import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/styles_manager.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48.h,
          width: 48.w,
          padding: EdgeInsets.all(5.h),
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: ColorsManager.primaryLightColor),
          child: SvgPicture.asset(ImagesManager.notificationTypeIcon),
        ),
        16.w.pw,
        Expanded(
          child: Text(
            "نذكرك بموعد الجلسة المُحددة مع د.على بعد نصف ساعة من الآن",
            style: StylesManager.textStyle14GreyRegular
                .copyWith(color: ColorsManager.grey2Color),
          ),
        ),
        16.w.pw,
        Text(
          "6:00 PM",
          style: StylesManager.textStyle12GrayRegular
              .copyWith(color: ColorsManager.hintGreyColor),
        )
      ],
    );
  }
}
