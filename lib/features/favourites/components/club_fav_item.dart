import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/components/like_button_widget.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';

class ClubFavIcon extends StatelessWidget {
  const ClubFavIcon({super.key});

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
                              "نادى الذكاء والإبداع",
                              style: StylesManager.textStyle14BlackRegular
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ),
                          const LikeButtonWidget(),
                        ],
                      ),
                      8.h.ph,
                      Row(
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '1200 ',
                                  style: StylesManager.textStyle14GreyRegular,
                                ),
                                TextSpan(
                                  text: StringsManager.follower,
                                  style: StylesManager.textStyle14GreyRegular,
                                ),
                              ],
                            ),
                          ),
                          8.w.pw,
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '200 ',
                                  style: StylesManager.textStyle14GreyRegular,
                                ),
                                TextSpan(
                                  text: StringsManager.post,
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
