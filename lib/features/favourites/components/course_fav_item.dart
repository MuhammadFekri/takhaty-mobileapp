import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/router/routes.dart';

import '../../../core/components/like_button_widget.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';

class CourseFavIcon extends StatelessWidget {
  const CourseFavIcon({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 104.h,
                    width: 104.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/104x104"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                8.w.pw,
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "التخلص من الإكتئاب",
                              style: StylesManager.textStyle14BlackRegular
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ),
                          const LikeButtonWidget(),
                        ],
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
                              text: '${StringsManager.date}: ',
                              style: StylesManager.textStyle12GrayRegular,
                            ),
                            TextSpan(
                              text: '22/12/2023',
                              style: StylesManager.textStyle14GreyRegular,
                            ),
                          ],
                        ),
                      ),
                      8.h.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                ImagesManager.community,
                                width: 16.w,
                                height: 16.h,
                                color: ColorsManager.secondary2,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: ' 20 ',
                                      style:
                                          StylesManager.textStyle14GreyRegular,
                                    ),
                                    TextSpan(
                                      text: StringsManager.emptySeats,
                                      style:
                                          StylesManager.textStyle12GrayRegular,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '2000 ',
                                  style: StylesManager.textStyle14PrimaryBold,
                                ),
                                TextSpan(
                                  text: StringsManager.currency,
                                  style: StylesManager.textStyle14GreyRegular,
                                ),
                              ],
                            ),
                          ),
                        ],
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
