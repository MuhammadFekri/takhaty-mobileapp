import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resources/colors_manager.dart';

class CustomExpertAction extends StatelessWidget {
  final void Function()? onTap;
  final String icon;
  const CustomExpertAction({
    super.key,
    this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 36.h,
        width: 36.w,
        margin: EdgeInsets.only(left: 16.w),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ColorsManager.secondary3,
        ),
        padding: const EdgeInsets.all(8),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
