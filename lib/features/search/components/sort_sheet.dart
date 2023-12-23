import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';

import '../../../core/components/default_button.dart';

class SortSheet extends StatelessWidget {
  const SortSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            36.h.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringsManager.sortBy,
                  style: StylesManager.textStyle18WhiteLight.copyWith(
                      color: ColorsManager.blackColor,
                      fontWeight: FontWeight.normal),
                ),
                const CloseButton(
                  color: ColorsManager.grey2Color,
                )
              ],
            ),
            26.h.ph,
            Text(
              StringsManager.price,
              style: StylesManager.textStyle16BlackRegular
                  .copyWith(color: ColorsManager.grey2Color),
            ),
            16.h.ph,
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.w, vertical: 15.h),
                    decoration: BoxDecoration(
                        color: ColorsManager.grey4Color,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(ImagesManager.filterPrice),
                        12.w.pw,
                        Text(
                          StringsManager.top,
                          style: StylesManager.textStyle16BlackRegular.copyWith(
                              fontWeight: FontWeight.normal,
                              color: ColorsManager.grey2Color),
                        ),
                      ],
                    ),
                  ),
                ),
                17.w.pw,
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.w, vertical: 15.h),
                    decoration: BoxDecoration(
                        color: ColorsManager.grey4Color,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(ImagesManager.filterPrice),
                        12.w.pw,
                        Text(
                          StringsManager.least,
                          style: StylesManager.textStyle16BlackRegular.copyWith(
                              fontWeight: FontWeight.normal,
                              color: ColorsManager.grey2Color),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            16.h.ph,
            Text(
              StringsManager.rate,
              style: StylesManager.textStyle16BlackRegular
                  .copyWith(color: ColorsManager.grey2Color),
            ),
            16.h.ph,
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.w, vertical: 15.h),
                    decoration: BoxDecoration(
                        color: ColorsManager.grey4Color,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(ImagesManager.verification),
                        12.w.pw,
                        Text(
                          StringsManager.top,
                          style: StylesManager.textStyle16BlackRegular.copyWith(
                              fontWeight: FontWeight.normal,
                              color: ColorsManager.grey2Color),
                        ),
                      ],
                    ),
                  ),
                ),
                17.w.pw,
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.w, vertical: 15.h),
                    decoration: BoxDecoration(
                        color: ColorsManager.grey4Color,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(ImagesManager.verification),
                        12.w.pw,
                        Text(
                          StringsManager.least,
                          style: StylesManager.textStyle16BlackRegular.copyWith(
                              fontWeight: FontWeight.normal,
                              color: ColorsManager.grey2Color),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            40.h.ph,
            DefaultButtonWidget(
                function: () {
                  Navigator.pop(context);
                },
                text: StringsManager.apply),
            32.h.ph
          ],
        ),
      ),
    );
  }
}
