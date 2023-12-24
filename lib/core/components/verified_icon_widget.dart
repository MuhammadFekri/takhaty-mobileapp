import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/colors_manager.dart';
import '../resources/images_manager.dart';

class VerifiedIcon extends StatelessWidget {
  const VerifiedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.h),
      decoration: const BoxDecoration(
          color: ColorsManager.primaryColor, shape: BoxShape.circle),
      height: 16.h,
      width: 16.w,
      child: SvgPicture.asset(ImagesManager.recommended),
    );
  }
}
