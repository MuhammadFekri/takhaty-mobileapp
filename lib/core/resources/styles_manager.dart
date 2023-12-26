import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/constants/constants.dart';
import 'package:takhaty/core/resources/colors_manager.dart';

class StylesManager {
  static TextStyle textStyle10Secondary2Regular = TextStyle(
    color: ColorsManager.secondary2,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle12BlackRegular = TextStyle(
    color: ColorsManager.blackColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle12GrayRegular = TextStyle(
    color: ColorsManager.hintGreyColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle14GreyRegular = TextStyle(
    color: ColorsManager.greyColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle14BlackRegular = TextStyle(
    color: ColorsManager.blackColor,
    fontSize: 14.sp,
  );

  static TextStyle textStyle14PrimaryBold = TextStyle(
      color: ColorsManager.primaryColor,
      fontSize: 14.sp,
      fontWeight: FontWeight.bold);
  static TextStyle textStyle16BlackRegular = TextStyle(
      color: ColorsManager.blackColor,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      fontFamily: fontFamily);
  static TextStyle textStyle24BlackBold = TextStyle(
    color: ColorsManager.blackColor,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle16GrayRegular = TextStyle(
      color: ColorsManager.grey2Color, fontSize: 16.sp, fontFamily: fontFamily);

  static TextStyle textStyle40WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 40.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle18WhiteLight = TextStyle(
    color: Colors.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w300,
  );

  static TextStyle textStyle18BlackRegular = TextStyle(
    color: Colors.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle18PrimaryRegular = TextStyle(
    color: ColorsManager.primaryColor,
    fontSize: 18.sp,
  );

  static TextStyle textStyle18PrimaryBold = TextStyle(
    color: ColorsManager.primaryColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle36BlackRegular = TextStyle(
    color: Colors.black,
    fontSize: 36.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyle16BlackSemiBold = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyle18BlackSemiBold = TextStyle(
    color: Colors.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );
}
