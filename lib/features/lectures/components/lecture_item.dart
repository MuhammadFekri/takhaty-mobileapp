import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/router/routes.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';

class LectureItem extends StatelessWidget {
  const LectureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRouter.lectureScreen);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.secondary2),
            borderRadius: BorderRadius.circular(12.r)),
        padding: EdgeInsets.all(
          12.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 104.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image:
                          NetworkImage("https://via.placeholder.com/120x100"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      bottom: 5.h, top: 5.h, left: 8.w, right: 4.w),
                  margin: EdgeInsets.only(bottom: 9.h, right: 8.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white.withOpacity(0.6)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 10.h,
                        width: 10.w,
                        child: SvgPicture.asset(
                          ImagesManager.community,
                          color: ColorsManager.primaryColor,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        "20 ${StringsManager.placesRemaining}",
                        style: StylesManager.textStyle10Secondary2Regular
                            .copyWith(color: ColorsManager.blackColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            12.h.ph,
            Text(
              "التخلص من الإكتئاب",
              style: StylesManager.textStyle14BlackRegular
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            8.h.ph,
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${StringsManager.host}: ',
                    style: StylesManager.textStyle12GrayRegular,
                  ),
                  TextSpan(
                    text: ' د.رضوى محمد',
                    style: StylesManager.textStyle14GrayRegular.copyWith(
                        color: ColorsManager.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            8.h.ph,
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${StringsManager.date}:  ',
                    style: StylesManager.textStyle12GrayRegular,
                  ),
                  TextSpan(
                    text: '22/12/2023',
                    style: StylesManager.textStyle14BlackRegular,
                  ),
                ],
              ),
            ),
            8.h.ph,
            Row(
              children: [
                Text("2000 ", style: StylesManager.textStyle14PrimaryBold),
                Text(
                  StringsManager.currency,
                  style: StylesManager.textStyle14GrayRegular
                      .copyWith(color: ColorsManager.hintGreyColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
