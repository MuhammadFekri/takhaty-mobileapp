import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resources/colors_manager.dart';

class CustomExpertAction extends StatelessWidget {
  final void Function()? onTap;
  final String icon;
  final double radius;
  final double padding;
  const CustomExpertAction({
    super.key,
    this.onTap,
    required this.icon,
    this.radius = 36,
    this.padding = 8,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: radius.h,
        width: radius.w,
        margin: EdgeInsets.only(left: 16.w),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ColorsManager.secondary3,
        ),
        padding: EdgeInsets.all(padding),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
