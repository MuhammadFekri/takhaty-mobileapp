import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/router/routes.dart';

import '../../../core/components/verified_icon_widget.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/styles_manager.dart';

class ExpertDetailsItem extends StatelessWidget {
  const ExpertDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRouter.expertDetailsScreen);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: ColorsManager.secondary2)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image:
                              NetworkImage("https://via.placeholder.com/40x40"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const VerifiedIcon()
                  ],
                ),
                12.w.pw,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "رضوى محمد",
                              style: StylesManager.textStyle16BlackRegular
                                  .copyWith(fontSize: 18.sp),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 8.h),
                            decoration: BoxDecoration(
                              color: ColorsManager.secondary2,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              "أخصائى نفسي",
                              style: StylesManager.textStyle12BlackRegular
                                  .copyWith(
                                      color: ColorsManager.lighterWhiteColor,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      11.h.ph,
                      Text(
                        "أخصائى مساعد حاصلة على درجة الماجيستير فى علم النفس جامعة القاهرة",
                        style: StylesManager.textStyle14GrayRegular
                            .copyWith(color: ColorsManager.grey2Color),
                      ),
                      8.h.ph,
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '+',
                              style: StylesManager.textStyle14GrayRegular
                                  .copyWith(color: ColorsManager.primaryColor),
                            ),
                            TextSpan(
                              text: '200',
                              style: StylesManager.textStyle14GrayRegular
                                  .copyWith(
                                      color: ColorsManager.primaryColor,
                                      fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ' تقييم',
                              style:
                                  StylesManager.textStyle14GrayRegular.copyWith(
                                color: ColorsManager.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      )
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
