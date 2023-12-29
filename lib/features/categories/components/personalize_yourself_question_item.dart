import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/router/routes.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';

class PersonalizeYourselfQuestionItem extends StatelessWidget {
  const PersonalizeYourselfQuestionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.personalizeYourselfQuestionDetailsScreen);
      },
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Color(0x19D76555)),
        ),
        child: Column(
          children: [
            Container(
              height: 50.h,
              width: 50.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x19D76555),
              ),
            ),
            12.h.ph,
            Text(
              "إختبار اضطراب الوسواس القهرى",
              textAlign: TextAlign.center,
              style: StylesManager.textStyle14BlackRegular
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            12.h.ph,
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(6.w),
                    decoration: BoxDecoration(
                        color: const Color(0x19D76555),
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImagesManager.info),
                        4.w.pw,
                        Text(
                          "10 ${StringsManager.questions}",
                          style: StylesManager.textStyle10Secondary2Regular
                              .copyWith(color: ColorsManager.blackColor),
                        )
                      ],
                    ),
                  ),
                ),
                4.w.pw,
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(6.w),
                    decoration: BoxDecoration(
                        color: const Color(0x19D76555),
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImagesManager.timeMin),
                        4.w.pw,
                        Text(
                          "10 ${StringsManager.minutes}",
                          style: StylesManager.textStyle10Secondary2Regular
                              .copyWith(color: ColorsManager.blackColor),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
