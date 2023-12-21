import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';

import '../../../core/resources/images_manager.dart';
import '../../../core/resources/styles_manager.dart';

class SearchChoiceWidget extends StatelessWidget {
  final String title;
  final String icon;
  final void Function()? onTap;
  const SearchChoiceWidget({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(12.h),
          decoration: BoxDecoration(
              color: ColorsManager.grey3Color,
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(icon),
              8.w.pw,
              Expanded(
                  child: Text(
                title,
                style: StylesManager.textStyle16BlackRegular,
              )),
              SvgPicture.asset(ImagesManager.arrowDown),
            ],
          ),
        ),
      ),
    );
  }
}
