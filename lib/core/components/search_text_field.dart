import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/colors_manager.dart';
import '../resources/images_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/styles_manager.dart';

class SearchTextField extends StatelessWidget {
  final bool isEnabled;
  const SearchTextField({
    super.key,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: isEnabled,
      decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          hintText: StringsManager.searchInApp,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorsManager.hintGreyColor),
            borderRadius: BorderRadius.circular(12.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorsManager.hintGreyColor),
            borderRadius: BorderRadius.circular(12.r),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorsManager.hintGreyColor),
            borderRadius: BorderRadius.circular(12.r),
          ),
          prefixIcon:
              SvgPicture.asset(ImagesManager.searchIcon, fit: BoxFit.scaleDown),
          hintStyle: StylesManager.textStyle16BlackRegular
              .copyWith(color: ColorsManager.hintGreyColor)),
    );
  }
}
