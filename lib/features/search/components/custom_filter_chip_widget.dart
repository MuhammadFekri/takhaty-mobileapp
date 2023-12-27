import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/styles_manager.dart';

class CustomFilterChip extends StatelessWidget {
  final bool isSelected;
  final String title;
  final void Function()? onTap;
  const CustomFilterChip({
    super.key,
    this.isSelected = false,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
      decoration: BoxDecoration(
          color: ColorsManager.spotColor,
          borderRadius: BorderRadius.circular(12.r)),
      child: Text(
        title,
        style: StylesManager.textStyle14BlackRegular.copyWith(
            fontWeight: FontWeight.normal, color: ColorsManager.primaryColor),
      ),
    );
  }
}
