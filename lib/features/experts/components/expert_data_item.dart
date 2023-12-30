import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/styles_manager.dart';

class ExpertDataItem extends StatelessWidget {
  final String icon;
  final String label;
  final String data;
  const ExpertDataItem({
    super.key,
    required this.icon,
    required this.label,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 170.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(icon),
          4.w.pw,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: StylesManager.textStyle14GrayRegular.copyWith(
                    color: ColorsManager.grey2Color,
                    fontWeight: FontWeight.w300),
              ),
              8.h.ph,
              Text(
                data,
                style: StylesManager.textStyle12BlackRegular.copyWith(
                  color: ColorsManager.blackColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
