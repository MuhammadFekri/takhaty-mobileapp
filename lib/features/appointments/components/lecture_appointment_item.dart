import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';

class LectureAppointmentItem extends StatelessWidget {
  const LectureAppointmentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: ColorsManager.secondary2)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/120x100"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                8.w.pw,
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                              style:
                                  StylesManager.textStyle14GreyRegular.copyWith(
                                color: ColorsManager.primaryColor,
                              ),
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
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '${StringsManager.time}:  ',
                              style: StylesManager.textStyle12GrayRegular,
                            ),
                            TextSpan(
                              text: '01:45 م',
                              style: StylesManager.textStyle14BlackRegular,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
