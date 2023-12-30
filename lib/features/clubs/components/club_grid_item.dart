import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/components/default_button.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';
import '../../../core/router/routes.dart';

class ClubGridItem extends StatelessWidget {
  const ClubGridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRouter.clubDetailsScreen);
      },
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: ColorsManager.secondary3)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image.network("https://via.placeholder.com/70x70",
            //     fit: BoxFit.cover),
            SvgPicture.asset(ImagesManager.clubForPeople, height: 70),
            Text(
              'نادى أصحاب الهمم',
              style: StylesManager.textStyle14BlackBold,
            ),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '1200 ',
                        style: StylesManager.textStyle12GrayRegular,
                      ),
                      TextSpan(
                        text: StringsManager.follower,
                        style: StylesManager.textStyle12GrayRegular,
                      ),
                    ],
                  ),
                ),
                5.w.pw,
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '200 ',
                        style: StylesManager.textStyle12GrayRegular,
                      ),
                      TextSpan(
                        text: StringsManager.post,
                        style: StylesManager.textStyle12GrayRegular,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            DefaultButtonWidget(
              text: StringsManager.follow,
              background: ColorsManager.spotColor,
              customTextStyle:
                  const TextStyle(color: ColorsManager.primaryColor),
              function: () {},
              customHeight: 36.h,
            )
          ],
        ),
      ),
    );
  }
}
