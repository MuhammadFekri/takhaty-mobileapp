import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/colors_manager.dart';
import '../resources/images_manager.dart';

class LikeButtonWidget extends StatelessWidget {
  const LikeButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.w,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: ColorsManager.secondary2.withAlpha(20)),
      child: Center(
        child: SvgPicture.asset(
          ImagesManager.favFilled,
        ),
      ),
    );
  }
}
