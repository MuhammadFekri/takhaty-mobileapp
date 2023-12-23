import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/styles_manager.dart';

class FilterLabelWidget extends StatelessWidget {
  final String title;
  final String icon;
  const FilterLabelWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          10.w.pw,
          Text(
            title,
            style: StylesManager.textStyle16BlackRegular,
          )
        ],
      ),
    );
  }
}
