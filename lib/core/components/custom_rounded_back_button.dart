import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../resources/colors_manager.dart';

class CustomRoundedBackButton extends StatelessWidget {
  const CustomRoundedBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Container(
        height: 44.h,
        width: 44.w,
        margin: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: ColorsManager.secondary3),
        child: const Icon(
          Icons.arrow_back,
          color: ColorsManager.primaryColor,
        ),
      ),
    );
  }
}
